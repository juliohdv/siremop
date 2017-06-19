


$(document).ready(function(){
      $("#seleccionar").click( function(event) {
        alert("You clicked the button using JQuery!");
    });
});

function popitup(url) {
    newwindow=window.open(url,'{{title}}','height=500,width=500');
    if (window.focus) {newwindow.focus()}
    return false;
}

$(document).ready(function(){
    $("#guardarPreguntaForm").submit(function(e){
    	e.preventDefault();
    	$.ajax({
    		url: "",
    		type: "POST",
    		data: $("#guardarPreguntaForm").serialize(),
    		success: function(data){
    			$("#mensajeResultado").append(data);
    			$("#guardarPreguntaForm").children().prop('disabled',true);
    			$('#contenedorTipoRespuesta').removeClass('oculto');
    		}
    	});
    });
});

$(document).ready(function(){
    $("#formFalsoVerdadero").submit(function(e){
    	e.preventDefault();
    	$.ajax({
    		url: "",
    		type: "POST",
    		data: $("#formFalsoVerdadero").serialize(),
    		success: function(data){
    			$("#mensajeResultado2").append(data);
    			$("#formFalsoVerdadero").children().prop('disabled',true);
    			$("#formOpcionMultiple").children().prop('disabled',true);
    		}
    	});
    });
});

$(document).ready(function(){
    $("#formOpcionMultiple").submit(function(e){
    	e.preventDefault();
    	$.ajax({
    		url: "",
    		type: "POST",
    		data: $("#formOpcionMultiple").serialize(),
    		success: function(data){
    			$("#mensajeResultado3").append(data);
    			$("#formOpcionMultiple").children().prop('disabled',true);
    			$("#formFalsoVerdadero").children().prop('disabled',true);
    		}
    	});
    });
});

$(document).ready(function(){
    $("#generarOpciones").click(function(){
    	$('#opciones').empty();
    	var numOpciones = $('#numOpciones').val();
    	for (var i = 0; i<numOpciones; i++) {
     	  $('#opciones').append('Ingrese el valor de la opción '+i+'<br><input type="text" name="nombreRespuesta'+i+'"><br>');
		}
		$('#opciones').append('<input type="hidden" name="cantidadRespuestas" value="'+(i)+'"><br>');
		$('#opciones').append('<button type="submit" id="sbmGuardarRespuestaOM">Guardar</button>');
    });
});