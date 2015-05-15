@extends("layout")

@section("content")

    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center title">
                <h1>Organicemos tu partido!</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <label>Tipo de Cancha:*</label>
                    <select name="tamano_cancha" class="form-control">
                        @foreach( $tamano_cancha as $keytc => $valuetc )
                            <option value="{{$keytc}}">{{$valuetc}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                    <label>Modo de Organizacion:*</label>
                    <select name="modo" class="form-control">
                        @foreach( ($modo = array("random" => "Modo Random", "propio" => "Modo Personal")) as $keym => $valuem )
                            <option value="{{$keym}}">{{$valuem}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <label>Jugadores: (Maximo 10)</label>
                    <a href="javascript:;" class="form-control btn btn-success"
                       id="agregarJugador" data-toggle="modal" data-target="#myModal">Agregar Jugador</a>
                </div>
                <div class="jugadores-agregados">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="myModal" data-backdrop="static" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content modal-agregar-jugador">
                    @include("player.add-simple")
                </div>
            </div>
        </div>
    </div>
@endsection

@section("javascript")
    <script src="/propio/js/player/add.js"></script>
    <script src="/propio/js/match/index.js"></script>
@endsection