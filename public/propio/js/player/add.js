var Add = {

    init : function(){
        $(".container").on("click", "#editar-imagen-perfil", Add.openFile);

        $("#file").change(function () {
            if (this.files && this.files[0]) {
                var reader = new FileReader();
                reader.onload = Add.imageIsLoaded;
                reader.readAsDataURL(this.files[0]);
            }
        });
    },

    openFile : function(){
        $("#file").click();
    },

    imageIsLoaded : function (e) {
        $('#profile-photo').attr('src', e.target.result);
        //$("#file").addClass("hide");
    }
}

jQuery(Add.init);