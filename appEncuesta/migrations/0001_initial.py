# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-05-15 01:58
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Encuesta',
            fields=[
                ('idEncuesta', models.AutoField(primary_key=True, serialize=False)),
                ('cantidadPreguntas', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Pregunta',
            fields=[
                ('idPregunta', models.AutoField(primary_key=True, serialize=False)),
                ('nombrePregunta', models.CharField(max_length=200)),
                ('cantidadRespuestas', models.IntegerField()),
                ('idEncuesta', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appEncuesta.Encuesta')),
            ],
        ),
        migrations.CreateModel(
            name='Respuesta',
            fields=[
                ('idRespuesta', models.AutoField(primary_key=True, serialize=False)),
                ('tipoRespuesta', models.IntegerField()),
                ('nombreRespuesta', models.CharField(max_length=200)),
                ('idPregunta', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appEncuesta.Pregunta')),
            ],
        ),
    ]
