from django.shortcuts import render
from .models import Encuesta

# Create your views here.
def encuesta_list(request):
	encuestas = Encuesta.objects.filter()
	return render(request, 'appEncuesta/encuesta_list.html', {'encuestas' : encuestas})
