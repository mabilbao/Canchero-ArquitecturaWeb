var Match = {

    equipo: null,
    map: null,

    init : function(){
        $('.container').on('change', '#tamano_cancha', Match.cambiarTamanoCancha);
        $('.container').on('click', '.agregarJugador', Match.verificarAgregado);
        $('#myModal').on('submit', '#crear-jugador', Match.altaJugador);
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

    altaJugador : function(){
        var nombre = $("[name='nombre']").val();
        var apodo = $("[name='apodo']").val();

        if ( nombre == "" && apodo == "" ){
            $("[name='apodo']").parents(".form-group:first").addClass("has-error").addClass("has-feedback");
            $("[name='nombre']").parents(".form-group:first").addClass("has-error").addClass("has-feedback");
            //$("[name='email']").parents(".form-group:first").addClass("has-error").addClass("has-feedback");
            return false;
        }else{

            event.preventDefault();
            var formData = new FormData($(this)[0]);

            var nombreFinal;
            if ( apodo == ""){
                nombreFinal = nombre;
            }else{
                nombreFinal = apodo;
            }
            var nombreEquipo = Match.equipo.parents(".equipo").find(".nombre-equipo").data("nombre");

            $.ajax({
                url: '/player/register',
                type: 'POST',
                data: formData,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function ( response ) {
                    if ( response.success ) {

                        if ( nombreEquipo == "equipo-1") {
                            var style = "btn-success";
                        }else{
                            var style = "btn-danger";
                        }

                        var jugador = "<div>"
                            + "<input type=\"text\" class=\"text-center jugador " + style + "\" value=\""
                            + nombreFinal
                            + "\" readonly=\"readonly\" style=\"width: 100%; margin: 0 0 10px; padding: 3px\">"

                            + "<input type=\"hidden\" name=\"" + nombreEquipo + "[]\" value=\"" + response.jugador_id + "\">"

                            + "</div>";

                        Match.equipo.append(jugador);

                        if (Match.equipo.find(".jugador").size() == $("#tamano_cancha").val()) {
                            Match.equipo.parents(".equipo").find(".agregarJugador").attr("disabled", "disabled");
                        }

                        Match.limpiarModal();
                        $('#myModal').modal('toggle');
                    }
                }
            });
        }
    },

    agregarJugador : function(){
        var apodo = $("[name='apodo']").val();

        var nombreEquipo = Match.equipo.parents(".equipo").find(".nombre-equipo").data("nombre");

        if ( apodo == "" ) {
            $("[name='apodo']").parents(".form-group:first").addClass("has-error").addClass("has-feedback");
            return false;
        }else{

            if ( nombreEquipo == "equipo-1") {
                var style = "btn-success";
            }else{
                var style = "btn-danger";
            }

            var nombreEquipo = Match.equipo.parents(".equipo").find(".nombre-equipo").data("nombre");

            var jugador = "<div>"
                + "<input type=\"text\" class=\"text-center jugador " + style + "\" name=\""
                + nombreEquipo + "[nombres]\" value=\""
                + apodo
                + "\" readonly=\"readonly\" style=\"width: 100%; margin: 0 0 10px; padding: 3px\">";

            if ( $("[name='email']").val() != "" ) {
                jugador = jugador + "<input type=\"hidden\" name=\"" + nombreEquipo + "[mails]\" value=\""
                + $("[name='email']").val() + "\">";
            }

            jugador = jugador + "</div>";

            Match.equipo.append(jugador);

            if (Match.equipo.find(".jugador").size() == $("#tamano_cancha").val()) {
                Match.equipo.parents(".equipo").find(".agregarJugador").attr("disabled", "disabled");
            }

            Match.limpiarModal();
            $('#myModal').modal('toggle');
        }
    },

    limpiarModal : function(){
        $("[name='nombre']").val("");
        $("[name='nombre']").parents(".form-group:first").removeClass("has-error").removeClass("has-feedback");
        $("[name='apodo']").val("");
        $("[name='apodo']").parents(".form-group:first").removeClass("has-error").removeClass("has-feedback");
        $("[name='email']").val("");
        $("[name='email']").parents(".form-group:first").removeClass("has-error").removeClass("has-feedback");
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