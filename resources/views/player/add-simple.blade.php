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
        @if ( !Auth::guest() )
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <input name="file" type="file" value="upload" id="file" class="hide" />
                        <img src="/propio/image/profile1.png" class="img-rounded img-responsive text-center"
                             id="profile-photo" alt="Responsive image">
                        <button type="button" id="editar-imagen-perfil" class="btn btn-primary form-control">Editar</button>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group" >
                                <label class="control-label" for="nombre">
                                    Nombre:
                                </label>
                                <span id="inputErrorNombre" class="error-msg sr-only">Nombre y/o apodo al menos!</span>
                                <input type="text" name="nombre" class="form-control" aria-describedby="inputErrorNombre">
                                <span class="glyphicon glyphicon-remove form-control-feedback sr-only" aria-hidden="true"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label class="control-label" for="apodo">
                                    Apodo:
                                </label>
                                <span id="inputErrorApodo" class="error-msg sr-only">Nombre y/o apodo al menos!</span>
                                <input type="text" name="apodo" class="form-control" aria-describedby="inputErrorApodo">
                                <span class="glyphicon glyphicon-remove form-control-feedback sr-only" aria-hidden="true"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label class="control-label" for="email">Mail:</label>
                                <input type="email" name="email" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @else
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <label class="control-label" for="apodo">
                            Apodo:
                        </label>
                        <span id="inputErrorApodo" class="error-msg sr-only">Apodo Obligatorio!</span>
                        <input type="text" name="apodo" class="form-control" aria-describedby="inputErrorApodo">
                        <span class="glyphicon glyphicon-remove form-control-feedback sr-only" aria-hidden="true"></span>
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
        @endif
    </div>
    <div class="modal-footer">
        @if ( Auth::check() )
            <button type="submit" id="submit" class="btn btn-success">Guardar</button>
        @else
            <button type="button" class="btn btn-success guardar-jugador-simple" >Agregar</button>
        @endif
        <button type="button" id="cancelar" class="btn btn-danger cancelar-jugador-simple" data-dismiss="modal">Cancelar</button>
    </div>
</form>