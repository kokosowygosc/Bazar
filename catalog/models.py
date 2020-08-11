# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import AbstractUser
from django.template.defaultfilters import slugify
from django_summernote.fields import SummernoteTextField

class User(AbstractUser):
    user_phonenumber = models.IntegerField(unique=False, null=True, blank=True)
    observing = models.CharField(max_length=200, null=True, default=None)

class Item(models.Model):
    item_id = models.ForeignKey(User, on_delete=models.CASCADE)
    item_name = models.CharField(max_length=200)
    item_price = models.DecimalField(max_digits=12, decimal_places=2)
    item_description = SummernoteTextField(max_length=500)
    pub_date = models.DateTimeField('date published')

    def __str__(self):
        return str(self.pk) + " " + self.item_name + " " + str(self.pub_date)

def get_image_filename(instance, filename):
    item_id = instance.item.id
    slug = slugify(item_id)
    return "images/%s-%s" % (slug, filename)

class Images(models.Model):
    item = models.ForeignKey(Item, default=None, on_delete=models.CASCADE)
    image = models.ImageField(upload_to=get_image_filename, verbose_name='Image')