# Generated by Django 2.1.5 on 2019-05-22 18:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0008_auto_20190522_2012'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='item_price',
            field=models.DecimalField(decimal_places=2, max_digits=12),
        ),
    ]
