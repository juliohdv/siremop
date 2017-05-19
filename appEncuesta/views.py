from django.shortcuts import render, redirect
from .models import Encuesta, Pregunta
from django.http import HttpResponse
from django.shortcuts import get_list_or_404, get_object_or_404
from .forms import PreguntaForm, EditarPreguntaForm
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
		preguntas = Pregunta.objects.filter(idEncuesta=1).order_by('idPregunta');
		if request.method == 'POST':
			form = PreguntaForm(request.POST)
			if form.is_valid():
				form.save()
			return redirect('home')
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