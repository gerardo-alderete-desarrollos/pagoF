$(document).ready(function(){
    $("#btnIniciarSesion").on("click", function(){
        alert();
    });
});


// Función para rotar icono
$('#desplegar').on('click', () => {
    $("#imgRot").toggleClass("FlechaDown-css");
});