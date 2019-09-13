# -*- coding: utf-8 -*-
from django.http import HttpResponse, JsonResponse, HttpResponseRedirect
from django.views import View
from django.template import loader
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from .models import Item, User, Images
from django.shortcuts import redirect, render
from django.contrib.auth.decorators import login_required, user_passes_test
from .helpers import user_is_not_logged_in
from social_django.models import UserSocialAuth
from django.contrib.auth import update_session_auth_hash
from django.contrib import messages
from django.contrib.auth.forms import AdminPasswordChangeForm, PasswordChangeForm, AuthenticationForm
from .forms import DataForm, ItemForm, CustomUserCreationForm, ImageForm
from django.forms import modelformset_factory
from django.contrib.auth import authenticate, login
from sorl.thumbnail import delete as delete_thumbnail
import datetime, os

########################### CONSTS #####################################################################################

images_quantity=3

########################### MAIN PAGE ##################################################################################

def user_page(request, user_id):
    user_items = Item.objects.filter(item_id_id=user_id)
    user_details = User.objects.get(id=user_id)
    template = loader.get_template('catalog/user.html')
    context = {
        'user_items' : user_items,
        'user_details': user_details
    }
    return HttpResponse(template.render(context, request))

@user_passes_test(user_is_not_logged_in, login_url='index')
def login_page(request):
    if request.method == 'POST':
        create_user_form = CustomUserCreationForm(request.POST)
        login_form = AuthenticationForm(request=request, data=request.POST)
        if 'register' in request.POST and create_user_form.is_valid():
            create_user_form.save()
            messages.success(request, 'Pomyślnie zarejestrowano!')
            return redirect('login')
        if 'login' in request.POST and login_form.is_valid():
            username = login_form.cleaned_data.get('username')
            password = login_form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                messages.success(request, 'Pomyślnie zalogowano!')
                return redirect('index')
            else:
                messages.success(request, 'Nie znaleziono użytkownika!')
        elif 'login' in request.POST and not login_form.is_valid():
            messages.error(request, 'Login lub hasło niepoprawne.')
        return redirect('login')
    else:
        create_user_form = CustomUserCreationForm()
        login_form = AuthenticationForm()
    template = loader.get_template('catalog/login.html')
    context = {
        'create_user_form': create_user_form,
        'login_form': login_form,
    }
    return HttpResponse(template.render(context, request))

def item_detail(request, item_id):
    try:
        item_details = Item.objects.get(id=item_id)
        item_images = Images.objects.filter(item_id=item_id)
        item_count = range(len(item_images))
        user_details = User.objects.get(id=item_details.item_id_id)
        user_id = item_details.item_id_id
    except Exception: item_details = user_details = item_images = user_id = None
    template = loader.get_template('catalog/item.html')
    context = {
        'item_details' : item_details,
        'user_details' : user_details,
        'item_images' : item_images,
        'user_id' : user_id,
        'item_count' : item_count,
    }
    return HttpResponse(template.render(context, request))

def item_list(request):
    items_list = Item.objects.order_by('-pub_date')
    paginator = Paginator(items_list, 3)
    page = request.GET.get('page')
    try:
        items = paginator.page(page)
    except PageNotAnInteger:
        items = paginator.page(1)
    except EmptyPage:
        items = paginator.page(paginator.num_pages)
    template = loader.get_template('catalog/index.html')
    context = {
        'items_list' : items
    }
    return HttpResponse(template.render(context, request))

########################### ITEMS ######################################################################################

def add_item(request):
    template = loader.get_template('catalog/add_item.html')
    context = {}
    if request.user.is_authenticated:
        ImageFormSet = modelformset_factory(Images, form=ImageForm, extra=images_quantity)
        if request.method == 'POST':
            form_add_item = ItemForm(request.POST, instance=User())
            formset = ImageFormSet(request.POST, request.FILES, queryset=Images.objects.none())
            request.encoding = 'utf-8'
            if form_add_item.is_valid() and formset.is_valid():
                item = Item(
                    item_id_id=request.user.pk,
                    pub_date=datetime.datetime.now(),
                    item_name=form_add_item.cleaned_data['item_name'],
                    item_price=float(form_add_item.cleaned_data['item_price']),
                    item_description=form_add_item.cleaned_data['item_description'],
                )
                item.save()
                for form in formset.cleaned_data:
                    if form:
                        image = form['image']
                        photo = Images(item=item, image=image)
                        photo.save()
                messages.success(request, 'Przedmiot został dodany!')
                return redirect('items')
            elif not form_add_item.is_valid() or not formset.is_valid():
                context = {
                    'form_add_item': form_add_item,
                    'formset': formset,
                }
                messages.error(request, 'Napotkano błędy!')
                return HttpResponse(template.render(context, request))
        else:
            form_add_item = ItemForm()
            formset = ImageFormSet(queryset=Images.objects.none())
        context = {
            'form_add_item' : form_add_item,
            'formset' : formset,
        }
    return HttpResponse(template.render(context, request))

@login_required
def items(request):
    user_items = Item.objects.filter(item_id_id=request.user.pk)
    user_details = User.objects.get(id=request.user.pk)
    template = loader.get_template('catalog/items.html')
    context = {
        'user_items' : user_items,
        'user_details': user_details
    }
    return HttpResponse(template.render(context, request))

@login_required
def edit_item(request, item_id, image_name=None):
    instance = Item.objects.filter(id=int(item_id))
    try:
        if (int(request.user.pk) == int(instance.values('item_id_id')[0]['item_id_id'])):
            template = loader.get_template('catalog/edit_item.html')
            instance = Item.objects.filter(id=int(item_id))
            images = Images.objects.filter(item_id=int(item_id))
            ImageFormSet = modelformset_factory(Images, form=ImageForm, extra=images_quantity-len(images))
            ImagesFormSet = ImageFormSet(queryset=Images.objects.none())
            context = {
                'form_add_item': instance.values()[0],
                'images': images,
                'formset': ImagesFormSet,
            }
            if image_name:
                image = Images.objects.get(image=str('images/'+image_name))
                image_name=None
                delete_thumbnail(image.image.path)
                image.delete()
                images = Images.objects.filter(item_id=int(item_id))
                context['images']=images
                ImageFormSet = modelformset_factory(Images, form=ImageForm, extra=images_quantity - len(images))
                ImagesFormSet = ImageFormSet(queryset=Images.objects.none())
                context['formset'] = ImagesFormSet
                instance = Item.objects.filter(id=int(item_id))
                context['form_add_item'] = instance.values()[0]
                messages.success(request, 'Edycja dokonana poprawnie!')
                return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
            if request.method == 'POST':
                form_edit_item = Item.objects.get(id=item_id)
                form_edit_item.item_name = request.POST.get('item_name') if request.POST.get('item_name') else form_edit_item.item_name
                form_edit_item.item_price = request.POST.get('item_price') if request.POST.get('item_price') else form_edit_item.item_price
                form_edit_item.item_description = request.POST.get('item_description') if request.POST.get('item_description') else form_edit_item.item_description
                form_edit_item.save()

                formset = ImageFormSet(request.POST, request.FILES, queryset=Images.objects.none())
                if formset.is_valid():
                    for form in formset.cleaned_data:
                        if form:
                            image = form['image']
                            photo = Images(item=form_edit_item, image=image)
                            photo.save()
                images = Images.objects.filter(item_id=int(item_id))
                ImageFormSet = modelformset_factory(Images, form=ImageForm, extra=images_quantity - len(images))
                ImagesFormSet = ImageFormSet(queryset=Images.objects.none())
                instance = Item.objects.filter(id=int(item_id))
                context['images'] = images
                context['formset'] = ImagesFormSet
                context['form_add_item'] = instance.values()[0]
                messages.success(request, 'Edycja dokonana poprawnie!')
                return HttpResponse(template.render(context, request))
        else:
            messages.error(request, 'Ten przedmiot nie należy do Ciebie!')
            return redirect('items')
        return HttpResponse(template.render(context, request))
    except IndexError:
        messages.error(request, 'Błąd!')
        return redirect('items')

@login_required
def delete_item(request, item_id):
    instance = Item.objects.filter(id=int(item_id))
    images = Images.objects.filter(item_id=int(item_id))
    try:
        if (int(request.user.pk) == int(instance.values('item_id_id')[0]['item_id_id'])):
            for image in images:
                if os.path.isfile(image.image.path):
                    delete_thumbnail(image.image.path)
            instance.delete()
        else: messages.error(request, 'Ten przedmiot nie należy do Ciebie!')
    except IndexError: pass
    return redirect('items')

########################### USER #######################################################################################

@login_required
def user_settings(request):
    #FACEBOOK
    user = request.user
    try:
        facebook_login = user.social_auth.get(provider='facebook')
    except UserSocialAuth.DoesNotExist:
        facebook_login = None
    can_disconnect = (user.social_auth.count() > 1 or user.has_usable_password())

    #DATA EDIT
    if request.user.has_usable_password():
        PasswordForm = PasswordChangeForm
    else:
        PasswordForm = AdminPasswordChangeForm

    if request.method == 'POST':
        form_password = PasswordForm(request.user, request.POST)
        form_change = DataForm(instance=request.user or None, data=request.POST or None)

        if 'change_data' in request.POST and form_change.is_valid():
            instance = form_change.save(commit=False)
            instance.user = request.user
            instance.save()
            messages.success(request, 'Dane zostały zaktualizowane!')
        elif 'change_data' in request.POST and not form_change.is_valid():
            messages.error(request, 'Dane nie zostały zaktualizowane z uwagi na błędy w formularzu!')
        if 'change_password' in request.POST and form_password.is_valid():
            form_password.save()
            update_session_auth_hash(request, form_password.user)
            messages.success(request, 'Hasło zostało zaktualizowane!')
        elif 'change_password' in request.POST and not form_password.is_valid():
            messages.error(request, 'Wystąpiły błędy w formularzu! Hasło nie zostało zaktualizowane!')
        return redirect('user_settings')
    else:
        form_change = DataForm(instance=request.user)
        form_password = PasswordForm(request.user)

    template = loader.get_template('catalog/user_settings.html')
    context = {
        'form_password': form_password,
        'form_change': form_change,
        'facebook_login': facebook_login,
        'can_disconnect': can_disconnect
    }
    return HttpResponse(template.render(context, request))

def user_page(request, user_id):
    try:
        user_items = Item.objects.filter(item_id_id=user_id)
        user_details = User.objects.get(id=user_id)
    except Exception: user_items = user_details = None
    template = loader.get_template('catalog/user.html')
    context = {
        'user_items' : user_items,
        'user_details': user_details
    }
    return HttpResponse(template.render(context, request))

@login_required
def delete_user(request):
    instance = User.objects.filter(id=int(request.user.pk))
    if not request.user.is_superuser:
        instance.delete()
    return redirect('index')

@user_passes_test(user_is_not_logged_in, login_url='index')
def login_page(request):
    if request.method == 'POST':
        create_user_form = CustomUserCreationForm(request.POST)
        login_form = AuthenticationForm(request=request, data=request.POST)
        if 'register' in request.POST and create_user_form.is_valid():
            create_user_form.save()
            messages.success(request, 'Pomyślnie zarejestrowano!')
            return redirect('login')
        elif 'register' in request.POST and not create_user_form.is_valid():
            messages.error(request, create_user_form.errors)
            return redirect('login')
        if 'login' in request.POST and login_form.is_valid():
            username = login_form.cleaned_data.get('username')
            password = login_form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                messages.success(request, 'Pomyślnie zalogowano!')
                return redirect('index')
            else:
                messages.success(request, 'Nie znaleziono użytkownika!')
        elif 'login' in request.POST and not login_form.is_valid():
            messages.error(request, 'Login lub hasło niepoprawne.')
        return redirect('login')
    else:
        create_user_form = CustomUserCreationForm()
        login_form = AuthenticationForm()
    template = loader.get_template('catalog/login.html')
    context = {
        'create_user_form': create_user_form,
        'login_form': login_form,
    }
    return HttpResponse(template.render(context, request))

########################### MESSAGES ###################################################################################

