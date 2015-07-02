var Players = {

    init : function(){
        $('#my-modal').modal({
            show: 'false'
        });
        $(".container").on("click", ".mostrar-jugador", Players.mostrar);
        $("#myModal").on("click", "#cancelar", Players.limpiarModal);
    },

    mostrar : function(){
        var jugador_id = $(this).data("jugador");
        var nombre = $(this).data("nombre");
        var apodo = $(this).data("apodo");
        var email = $(this).data("email");
        var foto = $(this).data("foto");

        $('#myModal').modal('show');

        $('#myModal').find("[name='nombre']").val(nombre).attr("disabled", "disabled");
        $('#myModal').find("[name='apodo']").val(apodo).attr("disabled", "disabled");
        $('#myModal').find("[name='email']").val(email).attr("disabled", "disabled");
        if ( foto != "" ){
            $('#myModal').find("#profile-photo").attr("src", ("/filesystem/" + foto));
        }
        $('#myModal').find("#editar-imagen-perfil").addClass("hidden");
        $('#myModal').find("#submit").addClass("hidden");
        $('#myModal').find("#cancelar").text("Volver").button("refresh");

    },

    limpiarModal : function(){
        $('#profile-photo').attr('src', "/propio/image/profile1.png");
    }
}

jQuery(Players.init);