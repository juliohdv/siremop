from django.contrib import admin
from .models import Encuesta
from .models import Pregunta
from .models import Respuesta

admin.site.register(Encuesta)
admin.site.register(Pregunta)
admin.site.register(Respuesta)
# Register your models here.
