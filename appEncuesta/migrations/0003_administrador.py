# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-06-12 14:19
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('appEncuesta', '0002_encuesta_nombreencuesta'),
    ]

    operations = [
        migrations.CreateModel(
            name='Administrador',
            fields=[
                ('idAdministrador', models.AutoField(primary_key=True, serialize=False)),
                ('usuario', models.CharField(max_length=25)),
                ('contrasenia', models.CharField(max_length=25)),
            ],
        ),
    ]
