var vActual = 3;//$(".vistaActualJsp").val();
var estatus = 2;
var sec = 1;
$(document).on("click", "#btnGuardar", function () {
    console.log(vActual);

    seleccionar(2);

});
seleccionar(vActual);

function seleccionar(vActual) {
    determinarEstatus(estatus);
}

//determinarEstatus(vActual);
function determinarEstatus(){	

    // $.each(Estatus, function(i, obj){
        // var sec = obj.ventana;
        // var estatus = obj.estatus;

        if(estatus == 0){
            formVacio(sec);
        }else if(estatus == 1){
            formIncompleto(sec);
        }else if(estatus == 2){
           formCompleto(sec);
        }
    // });		

    formIncompleto(vActual);
    $(".ce-"+vActual).addClass("vistaSeleccionada");
    $(".icono-"+vActual).addClass("circulo-finalizado-act");
}


function formIncompleto(sec) {
    $(".ce-" + sec).removeClass("vistaSeleccionada");
    $(".ce-" + sec).removeClass("circulo-ext-inact");
    $(".ci-" + sec).removeClass("circulo-int-inact");

    $(".ln-izq-" + sec).removeClass("stepwizard-row-vacio-l");
    $(".ln-der-" + sec).removeClass("stepwizard-row-vacio-r");

    $(".ln-izq-" + sec).addClass("stepwizard-row-parcial-l");
    $(".ln-der-" + sec).addClass("stepwizard-row-parcial-r");

    $(".ce-" + sec).addClass("circulo-ext-act");
    $(".ci-" + sec).addClass("circulo-int-act");
}

function formCompleto(sec) {
    $(".ce-" + sec).removeClass("circulo-ext-inact");
    $(".ci-" + sec).removeClass("circulo-int-inact");
    $(".ln-izq-" + sec).addClass("stepwizard-row-completo-l");
    $(".ln-der-" + sec).addClass("stepwizard-row-completo-r");
    $(".icono-" + sec).addClass("icon-ok circulo-finalizado");
    $(".ce-" + sec).hide();
    $(".ci-" + sec).hide();
}

function formVacio(sec) {
    $(".ce-" + sec).addClass("circulo-ext-inact");
    $(".ci-" + sec).addClass("circulo-int-inact");

    $(".ce-" + sec).removeClass("vistaSeleccionada");

    $(".ln-izq-" + sec).addClass("stepwizard-row-vacio-l");
    $(".ln-der-" + sec).addClass("stepwizard-row-vacio-r");
}