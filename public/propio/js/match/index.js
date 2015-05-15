var Match = {

    equipo: null,

    init : function(){
        $('.container').on('change', '#tamano_cancha', Match.cambiarTamanoCancha);
        $('.container').on('click', '.agregarJugador', Match.verificarAgregado);
        $('.container').on('click', '.guardar-jugador-simple', Match.agregarJugador);
        $('.container').on('click', '.cancelar-jugador-simple', Match.limpiarModal);
    },

    cambiarTamanoCancha : function(){

        var cantidadJugadores = $(this).val();

        if (($(".equipo-1").find(".jugadores-agregados").find("p").size() > cantidadJugadores)
            || ($(".equipo-2").find(".jugadores-agregados").find("p").size() > cantidadJugadores)){
            alert("Tenes mas jugadores por equipo, que los del tamano de cancha al que queres cambiar. Limpia a unos pares del equipo campeon!");
            return false;
        }

        switch ( cantidadJugadores ) {
            case '5':
                $(".jugadores-agregados").css("height", "200px");
                Match.equipo.parents(".equipo").find(".agregarJugador").removeAttr("disabled");
                break;
            case '6':
                $(".jugadores-agregados").css("height", "250px");
                Match.equipo.parents(".equipo").find(".agregarJugador").removeAttr("disabled");
                break;
            case '7':
                $(".jugadores-agregados").css("height", "300px");
                Match.equipo.parents(".equipo").find(".agregarJugador").removeAttr("disabled");
                break;
            case '9':
                $(".jugadores-agregados").css("height", "400px");
                Match.equipo.parents(".equipo").find(".agregarJugador").removeAttr("disabled");
                break;
            case '11':
                $(".jugadores-agregados").css("height", "500px");
                Match.equipo.parents(".equipo").find(".agregarJugador").removeAttr("disabled");
                break;
        }

        $(".label_tamano").text(cantidadJugadores);
    },

    verificarAgregado : function (){
        Match.equipo = $(this).parents(".equipo").find(".jugadores-agregados");
    },

    agregarJugador : function(){
        var nombre = $("[name='nombre']").val();
        var apodo = $("[name='apodo']").val();

        if ( nombre == "" && apodo == "" ){
            alert("Es necesario que al menos ingreses un dato del jugador!");
            return false;
        }else{
            var nombreFinal;
            if ( apodo == ""){
                nombreFinal = nombre;
            }else{
                nombreFinal = apodo;
            }

            var jugador = "<p class=\"text-center " + Match.equipo.data('color') + "\">"
                + nombreFinal
                + "</p>";

            Match.equipo.append(jugador);

            if (Match.equipo.find("p").size() == $("#tamano_cancha").val() ){
                Match.equipo.parents(".equipo").find(".agregarJugador").attr("disabled","disabled");
            }

            Match.limpiarModal();
        }
    },

    limpiarModal : function(){
        $("[name='nombre']").val("");
        $("[name='apodo']").val("");
        $('#profile-photo').attr('src', "/propio/image/profile1.png");
    }
}

jQuery(Match.init)