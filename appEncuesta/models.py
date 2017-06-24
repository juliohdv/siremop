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
	numeroPregunta = models.IntegerField()
	idEncuesta = models.ForeignKey(Encuesta, on_delete=models.CASCADE)

	def __str__(self):
		return '{}'.format(self.nombrePregunta)

class Respuesta(models.Model):
	idRespuesta = models.AutoField(primary_key=True)
	numeroRespuesta = models.IntegerField(default=None)
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

class DetalleEncuesta(models.Model):
	idDetalleEncuesta = models.AutoField(primary_key=True)
	idPregunta = models.ForeignKey(Pregunta, on_delete=models.CASCADE)
	idRespuesta = models.ForeignKey(Respuesta, on_delete=models.CASCADE)
	fechaDetalle = models.DateField(auto_now=True)
	def get_porcentage(self):
		cuenta_total = Respuesta.objects.filter(idPregunta=self.idPregunta).count()
		cuenta = DetalleEncuesta.objects.filter(idRespuesta=self.idRespuesta).count()
		porcentaje = cuenta * 100 / cuenta_total
		return porcentaje

	def getConteo(self):
		cuenta_total = Respuesta.objects.filter(idPregunta=self.idPregunta).count()
		cuenta = DetalleEncuesta.objects.filter(idRespuesta=self.idRespuesta).count()
		return cuenta

	
		
		