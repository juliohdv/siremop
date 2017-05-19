$(document).ready(function(){
    $(".tabs").accessibleTabs({
        fx:"fadeIn"
    });
});


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