# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-06-17 02:16
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('appEncuesta', '0003_administrador'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='pregunta',
            name='cantidadRespuestas',
        ),
    ]