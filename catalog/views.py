﻿# -*- coding: utf-8 -*-
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.core.cache import cache
from django.contrib.auth.decorators import login_required, user_passes_test
from django.contrib.auth.forms import AdminPasswordChangeForm, PasswordChangeForm, AuthenticationForm, SetPasswordForm
from django.contrib.auth import update_session_auth_hash, authenticate, login
from django.contrib import messages
from django.http import HttpResponse
from django.template import loader
from django.views.generic import TemplateView
from django.shortcuts import redirect
from django.forms import modelformset_factory
from .models import Item, User, Images
from .helpers import user_is_not_logged_in
from .forms import DataForm, ItemForm, CustomUserCreationForm, ImageForm
from social_django.models import UserSocialAuth
from sorl.thumbnail import delete as delete_thumbnail
from pinax.messages.models import Thread, Message
import datetime, os, random
from django.shortcuts import render


def handler404(request, exception=None):
    return render(request, 'catalog/404.html', {})


def handler500(request, exception=None):
    return render(request, 'catalog/500.html', {})

# CONSTS ##############################################################################################################


images_quantity = 4
randomize_items_time = 1200


# MAIN PAGE ###########################################################################################################

def user_page(request, user_id):
    user_items = Item.objects.filter(item_id_id=user_id)
    user_details = User.objects.get(id=user_id)
    template = loader.get_template('catalog/user.html')
    context = {
        'user_items': user_items,
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
    images_count = None
    try:
        item_details = Item.objects.get(id=item_id)
        item_images = Images.objects.filter(item_id=item_id)
        images_count = range(len(item_images))
        user_details = User.objects.get(id=item_details.item_id_id)
        user_id = item_details.item_id_id
    except Exception:
        item_details = user_details = item_images = user_id = None
    template = loader.get_template('catalog/item.html')

    if request.method == 'POST':
        if 'to_user' in request.POST and 'from_user' in request.POST and 'content' in request.POST:
            to_user = User.objects.get(id=request.POST['to_user'])
            message = Message.new_message(from_user=request.user, to_users=[to_user], subject=request.POST['subject'], content=request.POST['content'])
            message.thread.userthread_set.filter(user=request.user).update(deleted=False)
            messages.info(request, "Wiadomość została wysłana")
    context = {
        'item_details': item_details,
        'user_details': user_details,
        'item_images': item_images,
        'user_id': user_id,
        'images_count': images_count,
    }
    if item_details is None:
        messages.warning(request, "Przedmiot najprawdopodobniej nie jest już dostępny")
        cache.delete('items_list')
        return redirect('index')
    return HttpResponse(template.render(context, request))


def item_list(request):
    if not cache.get('items_list'):
        items_list = sorted(Item.objects.order_by('-pub_date'), key=lambda x: random.random())
    else:
        items_list = cache.get('items_list')
    cache.set('items_list', list(items_list), randomize_items_time)

    paginator = Paginator(items_list, 3)
    page = request.GET.get('page')
    try:
        list_of_items = paginator.page(page)
    except PageNotAnInteger:
        list_of_items = paginator.page(1)
    except EmptyPage:
        list_of_items = paginator.page(paginator.num_pages)

    item_images = []
    for item in list_of_items:
        items_images = Images.objects.filter(item_id=item.id)
        if not items_images:
            item_images.append([])
        else:
            item_images.append([item_image for item_image in items_images][0])

    template = loader.get_template('catalog/index.html')
    context = {
        'items': zip(list_of_items, item_images),
        'items_list': list_of_items,
    }
    return HttpResponse(template.render(context, request))


# ITEMS ###############################################################################################################

def add_item(request):
    template = loader.get_template('catalog/add_item.html')
    context = {}
    if request.user.is_authenticated:
        imageformset = modelformset_factory(Images, form=ImageForm, extra=images_quantity)
        if request.method == 'POST':
            form_add_item = ItemForm(request.POST, instance=User())
            formset = imageformset(request.POST, request.FILES, queryset=Images.objects.none())
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
                cache.delete('items_list')
                return redirect('items')
            elif not form_add_item.is_valid() or not formset.is_valid():
                context = {
                    'form_add_item': form_add_item,
                    'formset': formset,
                }
                messages.error(request, 'Napotkano błędy!')
                if form_add_item.errors:
                    messages.error(request, form_add_item.errors)
                return HttpResponse(template.render(context, request))
        else:
            form_add_item = ItemForm()
            formset = imageformset(queryset=Images.objects.none())
        context = {
            'form_add_item': form_add_item,
            'formset': formset,
        }
    return HttpResponse(template.render(context, request))


@login_required
def items(request):
    user_items = Item.objects.filter(item_id_id=request.user.pk)
    user_details = User.objects.get(id=request.user.pk)
    template = loader.get_template('catalog/items.html')
    context = {
        'user_items': user_items,
        'user_details': user_details
    }
    return HttpResponse(template.render(context, request))


@login_required
def edit_item(request, item_id, image_name=None):
    instance = Item.objects.filter(id=int(item_id))
    try:
        if int(request.user.pk) == int(instance.values('item_id_id')[0]['item_id_id']):
            template = loader.get_template('catalog/edit_item.html')
            instance = Item.objects.get(id=int(item_id))
            form_edit_item = ItemForm(initial={
                'item_name': instance.item_name,
                'item_price': instance.item_price,
                'item_description': instance.item_description
            })

            images = Images.objects.filter(item_id=int(item_id))
            image_form_set = modelformset_factory(Images, form=ImageForm, extra=images_quantity - len(images))
            images_form_set = image_form_set(queryset=Images.objects.none())
            context = {
                'form_edit_item': form_edit_item,
                'images': images,
                'formset': images_form_set,
            }
            if image_name:
                image = Images.objects.get(image=str('images/' + image_name))
                delete_thumbnail(image.image.path)
                image.delete()
                images = Images.objects.filter(item_id=int(item_id))
                context['images'] = images
                image_form_set = modelformset_factory(Images, form=ImageForm, extra=images_quantity - len(images))
                images_form_set = image_form_set(queryset=Images.objects.none())
                context['formset'] = images_form_set
                instance = Item.objects.filter(id=int(item_id))
                context['form_edit_item'] = instance.values()[0]
                messages.success(request, 'Edycja dokonana poprawnie!')
                return redirect('items')
            if request.method == 'POST':
                form_edit_item = Item.objects.get(id=item_id)
                form_edit_item.item_name = request.POST.get('item_name') if request.POST.get(
                    'item_name') else form_edit_item.item_name
                form_edit_item.item_price = request.POST.get('item_price') if request.POST.get(
                    'item_price') else form_edit_item.item_price
                form_edit_item.item_description = request.POST.get('item_description') if request.POST.get(
                    'item_description') else form_edit_item.item_description
                form_edit_item.save()

                formset = image_form_set(request.POST, request.FILES, queryset=Images.objects.none())
                if formset.is_valid():
                    for form in formset.cleaned_data:
                        if form:
                            image = form['image']
                            photo = Images(item=form_edit_item, image=image)
                            photo.save()
                images = Images.objects.filter(item_id=int(item_id))
                image_form_set = modelformset_factory(Images, form=ImageForm, extra=images_quantity - len(images))
                images_form_set = image_form_set(queryset=Images.objects.none())
                instance = Item.objects.filter(id=int(item_id))
                context['images'] = images
                context['formset'] = images_form_set
                context['form_edit_item'] = instance.values()[0]
                messages.success(request, 'Edycja dokonana poprawnie!')
                return redirect('items')
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
        if int(request.user.pk) == int(instance.values('item_id_id')[0]['item_id_id']):
            for image in images:
                if os.path.isfile(image.image.path):
                    delete_thumbnail(image.image.path)
            instance.delete()
        else:
            messages.error(request, 'Ten przedmiot nie należy do Ciebie!')
    except IndexError:
        pass
    return redirect('items')


@login_required
def observe(request):
    if request.method == 'GET':
        item_id = request.GET['item_id']
        if item_id:
            user = User.objects.get(id=request.user.id)
            obs = [obs for obs in user.observing.split('\n')]
            if item_id not in obs:
                if obs != ['']:
                    obs.append(item_id)
                    user.observing = '\n'.join(obs)
                else:
                    user.observing = item_id
            else:
                pass
            user.save()
        else:
            messages.error(request, 'Dane nie zostały zaktualizowane z uwagi na błędy!')

        return HttpResponse("Success!")  # Sending an success response
    else:
        return HttpResponse("Request method is not a GET")


@login_required
def stopobserving(request):
    if request.method == 'GET':
        item_id = request.GET['item_id']
        if item_id:
            user = User.objects.get(id=request.user.id)
            obs = [obs for obs in user.observing.split('\n')]
            if item_id in obs:
                obs.remove(item_id)
                user.observing = '\n'.join(obs)
            else:
                pass
            user.save()
        return HttpResponse("Success!")  # Sending an success response
    else:
        return HttpResponse("Request method is not a GET")


@login_required
def observed(request):
    observing = User.objects.get(id=request.user.pk).observing.split('\n')
    try:
        list_of_items = Item.objects.filter(id__in=observing)
    except ValueError:
        list_of_items = []
    item_images = []
    for item in list_of_items:
        items_images = Images.objects.filter(item_id=item.id)
        item_images.append([item_image for item_image in items_images][0])

    template = loader.get_template('catalog/observing.html')
    context = {
        'observed_items': zip(list_of_items, item_images),
    }
    return HttpResponse(template.render(context, request))


# USER ################################################################################################################

@login_required
def user_settings(request):
    # FACEBOOK
    user = request.user
    try:
        facebook_login = user.social_auth.get(provider='facebook')
    except UserSocialAuth.DoesNotExist:
        facebook_login = None
    can_disconnect = (user.social_auth.count() > 1 or user.has_usable_password())

    # DATA EDIT
    if request.user.has_usable_password():
        password_form = PasswordChangeForm
    elif not request.user.has_usable_password():
        password_form = SetPasswordForm
    else:
        password_form = AdminPasswordChangeForm

    if request.method == 'POST':
        form_password = password_form(request.user, request.POST)
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
            if form_password.errors:
                messages.error(request, form_password.errors)
        return redirect('user_settings')
    else:
        form_change = DataForm(instance=request.user)
        form_password = password_form(request.user)

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
    except Exception:
        user_items = user_details = None
    template = loader.get_template('catalog/user.html')
    context = {
        'user_items': user_items,
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

# MESSAGES ############################################################################################################


class InboxView(TemplateView):
    template_name = "pinax/messages/inbox.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        threads = Thread.ordered(Thread.inbox(self.request.user))
        #threads = threads.extend(Thread.ordered(Thread.deleted(self.request.user)))

        context.update({
            "folder": "inbox",
            "threads": threads,
            "threads_unread": Thread.ordered(Thread.unread(self.request.user))
        })
        return context

