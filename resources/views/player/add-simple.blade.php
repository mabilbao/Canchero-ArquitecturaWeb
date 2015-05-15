
    <div class="modal-header">
        <div class="row">
            <div class="col-lg-12 text-center title">
                <h1>Agrega tu jugador!</h1>
            </div>
        </div>
    </div>
    <div class="modal-body">
        <div class="row">
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
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-success guardar-jugador-simple" data-dismiss="modal">Guardar</button>
        <button type="button" class="btn btn-danger cancelar-jugador-simple" data-dismiss="modal">Cancelar</button>
    </div>