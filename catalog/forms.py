from django import forms
from .models import User, Item, Images
from django.contrib.auth.forms import AuthenticationForm
from django.core.exceptions import ValidationError

class DataForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'email', 'user_phonenumber']

class CustomUserCreationForm(forms.Form):
    username = forms.CharField(label="Nazwa użytkownika")
    email = forms.EmailField(label="E-mail")
    password1 = forms.CharField(label='Wprowadz haslo', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Potwierdz hasło', widget=forms.PasswordInput)

    def clean_username(self):
        username = self.cleaned_data['username'].lower()
        r = User.objects.filter(username=username)
        if r.count():
            raise ValidationError("Login jest już zajęty!")
        return username

    def clean_email(self):
        email = self.cleaned_data['email'].lower()
        r = User.objects.filter(email=email)
        if r.count():
            raise ValidationError("Podany e-mail już istnieje.")
        return email

    def clean_password2(self):
        password1 = self.cleaned_data.get('password1')
        password2 = self.cleaned_data.get('password2')

        if password1 and password2 and password1 != password2:
            raise ValidationError("Hasła różnią się od siebie.")

        return password2

    def save(self, commit=True):
        user = User.objects.create_user(
            self.cleaned_data['username'],
            self.cleaned_data['email'],
            self.cleaned_data['password1']
        )
        return user

class ItemForm(forms.ModelForm):
    class Meta:
        model = Item
        fields = ['item_name', 'item_price', 'item_description', ]

class ImageForm(forms.ModelForm):
    image = forms.ImageField(label='Image')
    class Meta:
        model = Images
        fields = ('image',)