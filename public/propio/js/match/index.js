var Match = {

    equipo: null,
    map: null,

    init : function(){
        $('.container').on('change', '#tamano_cancha', Match.cambiarTamanoCancha);
        $('.container').on('click', '.agregarJugador', Match.verificarAgregado);
        $('.container').on('click', '.guardar-jugador-simple', Match.agregarJugador);
        $('.container').on('click', '.cancelar-jugador-simple', Match.limpiarModal);
        $('.container').on('submit', Match.validarCreacionPartido);
        $('.container').on('shown.bs.modal', "#myModalMap", function () {
            var currentCenter = Match.map.getCenter();  // Get current center before resizing
            google.maps.event.trigger(Match.map, "resize");
            Match.map.setCenter(currentCenter); // Re-set previous center
        });

        var options = {
            map: ".map_canvas",
            details: ".details",
            detailsAttribute: "data-geo",
            componentRestrictions: {country: 'ar'}
        };
        $("#cancha").geocomplete(options);
        Match.map = $("#cancha").geocomplete("map")
    },

    cambiarTamanoCancha : function(){

        var cantidadJugadores =  $(this).find(":selected").data("tamano");

        if (($("#equipo-1").find(".jugadores-agregados").find("p").size() > cantidadJugadores)
            || ($("#equipo-2").find(".jugadores-agregados").find("p").size() > cantidadJugadores)){
            alert("Tenes mas jugadores por equipo, que los del tamano de cancha al que queres cambiar. Limpia a unos pares del equipo campeon!");
            return false;
        }

        switch ( cantidadJugadores ) {
            case 5:
                $(".jugadores-agregados").css("height", "200px");
                break;
            case 6:
                $(".jugadores-agregados").css("height", "250px");
                break;
            case 7:
                $(".jugadores-agregados").css("height", "300px");
                break;
            case 9:
                $(".jugadores-agregados").css("height", "400px");
                break;
            case 11:
                $(".jugadores-agregados").css("height", "500px");
                break;
        }

        if ( Match.equipo ){
            Match.equipo.parents(".equipo").find(".agregarJugador").removeAttr("disabled");
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

            var nombreEquipo = Match.equipo.parents(".equipo").find(".nombre-equipo").data("nombre");

            var jugador = "<p class=\"text-center " + Match.equipo.data('color') + "\""
                + " name=\"" + nombreEquipo  + "[]\">"
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
    },

    validarCreacionPartido : function (){

        //var tamano = $("#tamano_cancha").find(":selected").data("tamano");
        //
        //if ( $("#equipo-1").find("p").size() != tamano){
        //    alert("El equipo 1 no tiene los suficientes jugadores. Media pila papa!");
        //    return false;
        //}
        //
        //if ( $("#equipo-2").find("p").size() != tamano){
        //    alert("El equipo 2 no tiene los suficientes jugadores. Media pila papa!");
        //    return false;
        //}
        //
        //if ( $("#cancha").val() == "" ){
        //    alert("Tenes que ingresar alguna cancha papa. Yo se que el Campnou no esta disponible, pero en una de esas alguna cancha en San Telmo te puede interesar.");
        //    return false;
        //}
    }

}

jQuery(Match.init)