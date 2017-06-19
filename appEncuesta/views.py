from django.shortcuts import render, redirect
from .models import Encuesta, Pregunta, Respuesta
from django.http import HttpResponse, JsonResponse
from .forms import PreguntaForm, EditarPreguntaForm, LoginForm


# Create your views here.


def index(request):
	return render(request, 'appEncuesta/index.html')
def encuesta_list(request):
	encuestas = Encuesta.objects.filter()
	return render(request, 'appEncuesta/encuesta_list.html', {'encuestas' : encuestas})

def iniciarEncuesta(request):
		return render(request, 'appEncuesta/iniciarEncuesta.html')

def resultadosEncuesta(request):
		return render(request, 'appEncuesta/resultadosEncuesta.html')

def administrarEncuesta(request):
		encuestas = Encuesta.objects.filter()
		preguntas = Pregunta.objects.filter(idEncuesta=1).order_by('idPregunta')
		if request.method == 'POST' and request.POST.get('sbmName', False) == 'sbmGuardarPregunta':
			Pregunta.objects.create(
					nombrePregunta = request.POST['nombrePregunta'],
					idEncuesta = Encuesta.objects.get(idEncuesta=request.POST['idEncuesta'])
				)
			return HttpResponse('Pregunta guardada con éxito')
		elif request.method == 'POST' and request.POST.get('sbmName2', False) == 'sbmGuardarRespuesta':
			preguntaActual = Pregunta.objects.last()
			for i in range(0,int(request.POST.get('cantidadRespuestas',False))):
				Respuesta.objects.create(
						tipoRespuesta = request.POST['tipoRespuesta'],
						nombreRespuesta = request.POST['nombreRespuesta'+str(i)],
						idPregunta = preguntaActual
					)
			return HttpResponse('Respuesta guardada con éxito')
		else:
			form = PreguntaForm()
		return render(request, 'appEncuesta/administrarEncuesta.html', {'form':form, 'encuestas' : encuestas, 'preguntas' : preguntas})

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