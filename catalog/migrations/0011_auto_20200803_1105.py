# Generated by Django 3.0.8 on 2020-08-03 09:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0010_user_observing'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='item_description',
            field=models.TextField(max_length=500),
        ),
    ]