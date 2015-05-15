var Match = {

    init : function(){
        $('.container').on('click', '.guardar-jugador-simple', Match.agregarJugador);
        $('.container').on('click', '.cancelar-jugador-simple', Match.limpiarModal);
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
            var jugador = "<p class=\"bg-primary\">" + nombreFinal + "</p>";
            $(".jugadores-agregados").append(jugador);

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