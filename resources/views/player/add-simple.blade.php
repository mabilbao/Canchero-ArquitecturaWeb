<form method="post" role="post" id="crear-jugador">
    <input type="hidden" name="_token" value="{{{ csrf_token() }}}" />
    <div class="modal-header">
        <div class="row">
            <div class="col-lg-12 text-center title">
                <h1>Agrega tu jugador!</h1>
            </div>
        </div>
    </div>
    <div class="modal-body">
        <div class="row">
            @if ( !Auth::guest() )
                <div class="col-lg-6">
                    <div class="form-group">
                        <input name="file" type="file" value="upload" id="file" class="hide" />
                        <img src="/propio/image/profile1.png" class="img-rounded img-responsive text-center"
                             id="profile-photo" alt="Responsive image">
                        <button id="editar-imagen-perfil" class="btn btn-primary form-control">Editar</button>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="nombre">Nombre:</label>
                                <input type="text" name="nombre" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="apodo">Apodo:</label>
                                <input type="text" name="apodo" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="email">Mail:</label>
                                <input type="email" name="email" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
            @else
                <div class="col-lg-12">
                    <div class="form-group">
                        <label for="apodo">Apodo:</label>
                        <input type="text" name="apodo" class="form-control">
                    </div>
                </div>
            @endif
        </div>
    </div>
    <div class="modal-footer">
        @if ( Auth::check() )
            <button type="submit" id="submit" class="btn btn-success">Guardar</button>
        @else
            <button type="button" class="btn btn-success guardar-jugador-simple" data-dismiss="modal">Agregar</button>
        @endif
        <button type="button" class="btn btn-danger cancelar-jugador-simple" data-dismiss="modal">Cancelar</button>
    </div>
</form>