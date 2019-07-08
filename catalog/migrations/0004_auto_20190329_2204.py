# Generated by Django 2.1.5 on 2019-03-29 21:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0003_auto_20190310_1152'),
    ]

    operations = [
        migrations.AddField(
            model_name='item',
            name='file',
            field=models.FileField(default='', upload_to='images/'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='item',
            name='file_name',
            field=models.CharField(blank=True, max_length=255),
        ),
    ]