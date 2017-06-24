from django.contrib import admin
from .models import Encuesta
from .models import Pregunta
from .models import Respuesta
from .models import DetalleEncuesta

admin.site.register(Encuesta)
admin.site.register(Pregunta)
admin.site.register(Respuesta)
admin.site.register(DetalleEncuesta)
# Register your models here.
