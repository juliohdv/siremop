from django.shortcuts import render, redirect
from .models import Encuesta, Pregunta, Respuesta, DetalleEncuesta
from django.http import HttpResponse, JsonResponse
from .forms import PreguntaForm, EditarPreguntaForm, LoginForm
from chartit import DataPool, Chart
import itertools
import functools


# Create your views here.


def index(request):
	return render(request, 'appEncuesta/index.html')
def encuesta_list(request):
	encuestas = Encuesta.objects.filter()
	return render(request, 'appEncuesta/encuesta_list.html', {'encuestas' : encuestas})

def iniciarEncuesta(request):
	x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
	if x_forwarded_for:
		ip = x_forwarded_for.split(',')[0]
	else:
		ip = request.META.get('REMOTE_ADDR')
	preguntas = Pregunta.objects.filter(idEncuesta=1).order_by('idPregunta')
	respuestasOU = Respuesta.objects.filter()
	if request.method == 'POST':
		for i in range(0, int(request.POST.get('numeroRadios',False))):
			DetalleEncuesta.objects.create(
					idPregunta = Pregunta.objects.get(idPregunta=request.POST['pregunta'+str(i+1)]),
					idRespuesta = Respuesta.objects.get(idRespuesta=request.POST['respuestaPregunta'+str(i+1)])
				)
		return HttpResponse('Guardadas respuestas OU')	
	return render(request, 'appEncuesta/iniciarEncuesta.html',{'preguntas':preguntas, 'respuestasOU':respuestasOU, 'ip':ip})

def resultadosEncuesta(request):
	preguntas = Pregunta.objects.filter(idEncuesta=1).order_by('idPregunta')
	respuestas = Respuesta.objects.filter()
	detalles = DetalleEncuesta.objects.filter()
	
	if request.method == 'POST':
		detalles= DetalleEncuesta.objects.filter(fechaDetalle=request.POST['fechaFiltro'])
	return render(request, 'appEncuesta/resultadosEncuesta.html',{'detalles':detalles,'preguntas' : preguntas, 'respuestas' : respuestas})
	return render(request, 'appEncuesta/resultadosEncuesta.html',{'detalles':detalles,'preguntas' : preguntas, 'respuestas' : respuestas})

def administrarEncuesta(request):
		encuestas = Encuesta.objects.filter()
		preguntas = Pregunta.objects.filter(idEncuesta=1).order_by('idPregunta')
		respuestas = Respuesta.objects.filter()
		if request.method == 'POST' and request.POST.get('sbmName', False) == 'sbmGuardarPregunta':
			Pregunta.objects.create(
					nombrePregunta = request.POST['nombrePregunta'],
					numeroPregunta = request.POST['numeroPregunta'],
					idEncuesta = Encuesta.objects.get(idEncuesta=request.POST['idEncuesta'])
				)
			return HttpResponse('Pregunta guardada con éxito')
		elif request.method == 'POST' and request.POST.get('sbmName2', False) == 'sbmGuardarRespuesta':
			preguntaActual = Pregunta.objects.last()
			for i in range(0,int(request.POST.get('cantidadRespuestas',False))):
				Respuesta.objects.create(
						numeroRespuesta = i+1,
						nombreRespuesta = request.POST['nombreRespuesta'+str(i)],
						idPregunta = preguntaActual
					)
			return HttpResponse('Respuesta guardada con éxito')
		else:
			form = PreguntaForm()
		return render(request, 'appEncuesta/administrarEncuesta.html', {'form':form, 'encuestas' : encuestas, 'preguntas' : preguntas, 'respuestas' : respuestas})

def editarPregunta(request, idPregunta):
	if request.method == 'POST':
		instance = Pregunta.objects.get(idPregunta=idPregunta)

		form = EditarPreguntaForm(request.POST or None, instance=instance)
		if form.is_valid():
			form.save();
		return HttpResponse('<script type="text/javascript">window.opener.location.replace("/encuesta/administrarEncuesta/");window.close()</script>')
	else:
		form = EditarPreguntaForm();
	return render(request,'appEncuesta/editarPregunta.html',{'form':form})