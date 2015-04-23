@extends("layout")

@section("content")

<div class="container">

    <div class="row">
        <div class="col-lg-12 text-center">
            <h1>Agrega tu jugador!</h1>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <input name="file" type="file" value="upload" id="file" />
                <img src="" class="img-circle img-responsive" id="profile-photo" alt="Responsive image">
            </div>
        </div>
        <div class="col-lg-6">
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <label for="nombre">Nombre:*</label>
                        <input type="text" name="nombre" class="form-control">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <label for="apellido">Apellido:*</label>
                        <input type="text" name="apellido" class="form-control">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <label for="apodo">Apodo:*</label>
                        <input type="text" name="apodo" class="form-control">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@section("javascript")
    <script src="/bower/jquery/jquery.js"></script>
    <script src="/bower/jquery/jquery.min.js"></script>

    <script src="/propio/js/player/add.js"></script>