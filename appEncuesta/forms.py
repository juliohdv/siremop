from django import forms
from  .models import Pregunta, Respuesta

class PreguntaForm(forms.ModelForm):
	class Meta:
		model = Pregunta
		fields = [
			'nombrePregunta',
			'cantidadRespuestas',
			'idEncuesta',
		]
		labels = {
			'nombrePregunta': 'Nombre',
			'cantidadRespuestas': 'Cantidad de Respuestas',
			'idEncuesta': 'ID de Encuesta',
		}

		widget = {
			'nombrePregunta' : forms.TextInput(attrs={'class':''}),
			'cantidadRespuestas' : forms.TextInput(),
			'idEncuesta' : forms.Select(),
		}

class EditarPreguntaForm(forms.ModelForm):
	class Meta:
		model = Pregunta
		fields = [
			'nombrePregunta',
			'cantidadRespuestas',
			'idEncuesta',
		]
		labels={
			'nombrePregunta': 'Nombre',
			'cantidadRespuestas': 'Cantidad de respuestas',
			'idEncuesta': 'ID Encuesta',
		}
		widget={
			'nombrePregunta' : forms.TextInput(attrs={'class':''}),
			'cantidadRespuestas' : forms.TextInput(),
			'idEncuesta' : forms.Select(),
		}

class LoginForm(forms.Form):
		fields = [
		'nombre_usuario',
		'contrasenia',
		]
		labels={
		'nombre_usuario' : 'Usuario',
		'contrasenia' : 'Contraseña'
		}
		widget={
		'nombre_usuario' : forms.TextInput(),
		'contrasenia' : forms.PasswordInput(),
		}