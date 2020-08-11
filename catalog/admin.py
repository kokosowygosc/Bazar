from django.contrib import admin
from .models import User, Item
from django_summernote.admin import SummernoteModelAdmin


class ItemModelAdmin(SummernoteModelAdmin):
    summernote_fields = ('item_description',)


admin.site.register(Item, ItemModelAdmin)
admin.site.register(User)
