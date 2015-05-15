var Match = {

    equipo: null,

    init : function(){
        $('.container').on('click', '.agregarJugador', Match.verificarAgregado);
        $('.container').on('click', '.guardar-jugador-simple', Match.agregarJugador);
        $('.container').on('click', '.cancelar-jugador-simple', Match.limpiarModal);
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
            var jugador = "<p class=\"bg-primary text-center\">" + nombreFinal + "</p>";

            Match.equipo.append(jugador);

            if (Match.equipo.find("p").size() == 5 ){
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