from django.conf.urls import include, url
from . import views
from django.contrib.auth.decorators import login_required


urlpatterns = [
	url(r'^$',views.index),
    url(r'^home/$', views.index, name='home'),
	url(r'^iniciarEncuesta/$', views.iniciarEncuesta, name='iniciar'),
	url(r'^resultadosEncuesta/$', views.resultadosEncuesta, name='resultados'),
	url(r'^administrarEncuesta/$', login_required(views.administrarEncuesta), name='administrar'),
	url(r'^editarPregunta/(?P<idPregunta>\d+)/$', views.editarPregunta, name='editarPregunta'),
	
]