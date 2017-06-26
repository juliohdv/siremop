


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

     	  $('#opciones').append('Ingrese el valor de la respuesta número: '+(i+1)+'<br><input type="text" name="nombreRespuesta'+i+'"><br>');

     	  $('#opciones').append('Ingrese el valor de la opción '+i+'<br><input type="text" name="nombreRespuesta'+i+'"><br>');
		}
		$('#opciones').append('<input type="hidden" name="cantidadRespuestas" value="'+(i)+'"><br>');
		$('#opciones').append('<button type="submit" id="sbmGuardarRespuestaOM">Guardar</button>');
    });
});

$(document).ready(function(){
    $("#select").click(function(e){
        $("#resultados").show();
        var strOU = $('#formInciarEncuestaOU').serialize();
        var numeroRadios = $('input:radio:checked');
        var numeroCheks = $('input:checkbox:checked');
        strOU=strOU+'&numeroCheks='+numeroCheks.length+'&numeroRadios='+numeroRadios.length;
        e.preventDefault();
        $.ajax({
            url: "",
            type: "POST",
            data: strOU,
            success: function(data){
                $("#resultadoEncuesta").append(data);
            }
        });
    });
});
$( function() {
    $( "#fechaResultados" ).datepicker({
        dateFormat: 'yy-mm-dd',
        changeMonth: true,
        changeYear: true,
        onSelect: function(dateText){
        var str = $("#formFecha").serialize();
            $.ajax({
                url: "",
                type: "POST",
                data: 'fechaFiltro='+dateText+'&'+str,
                success: function(data){
                    $("#detallesResultados").html('');
                    
                }
            });
        }
    });
});


(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.9&appId=1832396763679462";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

