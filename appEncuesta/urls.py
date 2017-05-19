from django.conf.urls import include, url
from . import views

urlpatterns = [
	url(r'^$', views.index),
	url(r'^home/$', views.index, name='home'),
	url(r'^iniciarEncuesta/$', views.iniciarEncuesta),
	url(r'^resultadosEncuesta/$', views.resultadosEncuesta),
	url(r'^administrarEncuesta/$', views.administrarEncuesta, name='administrar'),
	url(r'^editarPregunta/(?P<idPregunta>\d+)/$', views.editarPregunta),
]