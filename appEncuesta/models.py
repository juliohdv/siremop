from django.db import models
from django.utils import timezone

# Create your models here.

class Encuesta(models.Model):
	idEncuesta = models.AutoField(primary_key=True)
	cantidadPreguntas = models.IntegerField()

class Pregunta(models.Model):
	idPregunta = models.AutoField(primary_key=True)
	nombrePregunta = models.CharField(max_length=200)
	cantidadRespuestas = models.IntegerField()
	idEncuesta = models.ForeignKey(Encuesta, on_delete=models.CASCADE)

class Respuesta(models.Model):
	idRespuesta = models.AutoField(primary_key=True)
	tipoRespuesta = models.IntegerField()
	nombreRespuesta = models.CharField(max_length=200)
	idPregunta = models.ForeignKey(Pregunta, on_delete=models.CASCADE)