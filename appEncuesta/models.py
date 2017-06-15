from django.db import models
from django.utils import timezone

# Create your models here.

class Encuesta(models.Model):
	idEncuesta = models.AutoField(primary_key=True)
	nombreEncuesta = models.CharField(max_length=100, default='nombre')
	cantidadPreguntas = models.IntegerField()

	def __str__(self):
		return '{}'.format(self.nombreEncuesta)

class Pregunta(models.Model):
	idPregunta = models.AutoField(primary_key=True)
	nombrePregunta = models.CharField(max_length=200)
	cantidadRespuestas = models.IntegerField()
	idEncuesta = models.ForeignKey(Encuesta, on_delete=models.CASCADE)

	def __str__(self):
		return '{}'.format(self.nombrePregunta)

class Respuesta(models.Model):
	idRespuesta = models.AutoField(primary_key=True)
	tipoRespuesta = models.IntegerField()
	nombreRespuesta = models.CharField(max_length=200)
	idPregunta = models.ForeignKey(Pregunta, on_delete=models.CASCADE)

	def __str__(self):
		return '{}'.format(self.nombreRespuesta)

class Administrador(models.Model):
	idAdministrador = models.AutoField(primary_key=True)
	usuario = models.CharField(max_length=25)
	contrasenia = models.CharField(max_length=25)

	def __str__(self):
		return '{}'.format(self.usuario)