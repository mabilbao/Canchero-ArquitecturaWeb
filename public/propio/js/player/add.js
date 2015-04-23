var Add = {

    init : function(){
        //console.log("hola");
        $("#file").change(function () {
            if (this.files && this.files[0]) {
                var reader = new FileReader();
                reader.onload = Add.imageIsLoaded;
                reader.readAsDataURL(this.files[0]);
            }
        });
    },

    imageIsLoaded : function (e) {
        $('#profile-photo').attr('src', e.target.result);
    }
}

jQuery(Add.init);