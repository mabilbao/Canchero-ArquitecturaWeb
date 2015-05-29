@extends("layout")

@section("content")

    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center title">
                <h1>Organicemos tu partido!</h1>
            </div>
        </div>


        <form role="form" class="form" method="post" action="">
            <input type="hidden" name="_token" value="{{{ csrf_token() }}}" />
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <label>Tipo de Cancha:*</label>
                        <select name="tamano_cancha" id="tamano_cancha" class="form-control">
                            @foreach( $tamano_cancha as $keytc => $valuetc )
                                <option value="{{$keytc}}" data-tamano="{{$valuetc->tamano}}">{{$valuetc->nombre}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                {{--<div class="col-lg-4">--}}
                    {{--<div class="form-group">--}}
                        {{--<label>Organizacion:* (Proximamente: Random )</label>--}}
                        {{--<select name="modo" class="form-control" disabled>--}}
{{--                            @foreach( ($modo = array("propio" => "Modo Personal", "random" => "Modo Random (Proximamente)")) as $keym => $valuem )--}}
                            {{--@foreach( ($modo = array("propio" => "Modo Personal")) as $keym => $valuem )--}}
                                {{--<option value="{{$keym}}">{{$valuem}}</option>--}}
                            {{--@endforeach--}}
                        {{--</select>--}}
                    {{--</div>--}}
                {{--</div>--}}
                <div class="col-lg-6">
                    <label>Direccion de la cancha:</label>
                    <div class="form-inline">
                        <div class="form-group" style="width: 75%">
                            <input type="text" id="cancha" class="form-control" style="width: 100%">
                        </div>
                        <a href="javascript:;" class="btn btn-default"
                           data-toggle="modal" data-target="#myModalMap">Mapa</a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-4 equipo" id="equipo-1">
                    <div class="form-group text-center">
                        <label>Equipo:
                            <input type="text" data-nombre="equipo-1" placeholder="Ej: Equipo-1" class="nombre-equipo">
                            (<span class="label_tamano">5</span> jugadores)
                        </label>
                        <a href="javascript:;" class="form-control btn btn-success agregarJugador"
                           data-toggle="modal" data-target="#myModal">Agregar Jugador</a>
                    </div>
                    <div class="jugadores-agregados" data-color="btn-success" style="border: double; height: 200px">

                        <input type="text" class="text-center btn-success" name="equipo-1[]" value="1" readonly="readonly" style="width: 100%; margin: 0 0 10px; padding: 3px">
                        <input type="text" class="text-center btn-success" name="equipo-1[]" value="1" readonly="readonly" style="width: 100%; margin: 0 0 10px; padding: 3px">
                        <input type="text" class="text-center btn-success" name="equipo-1[]" value="1" readonly="readonly" style="width: 100%; margin: 0 0 10px; padding: 3px">
                        <input type="text" class="text-center btn-success" name="equipo-1[]" value="1" readonly="readonly" style="width: 100%; margin: 0 0 10px; padding: 3px">
                        <input type="text" class="text-center btn-success" name="equipo-1[]" value="1" readonly="readonly" style="width: 100%; margin: 0 0 10px; padding: 3px">

                    </div>
                </div>
                <div class="col-lg-2"></div>
                <div class="col-lg-4 equipo" id="equipo-2">
                    <div class="form-group text-center">
                        <label>Equipo:
                            <input type="text" data-nombre="equipo-2" placeholder="Ej: Equipo-2" class="nombre-equipo">
                            (<span class="label_tamano">5</span> jugadores)
                        </label>
                        <a href="javascript:;" class="form-control btn btn-danger agregarJugador"
                           data-toggle="modal" data-target="#myModal">Agregar Jugador</a>
                    </div>
                    <div class="jugadores-agregados" data-color="btn-danger" style="border: double; height: 200px">

                        <input type="text" class="text-center btn-danger" name="equipo-2[]" value="2" readonly="readonly" style="width: 100%; margin: 0 0 10px; padding: 3px">
                        <input type="text" class="text-center btn-danger" name="equipo-2[]" value="2" readonly="readonly" style="width: 100%; margin: 0 0 10px; padding: 3px">
                        <input type="text" class="text-center btn-danger" name="equipo-2[]" value="2" readonly="readonly" style="width: 100%; margin: 0 0 10px; padding: 3px">
                        <input type="text" class="text-center btn-danger" name="equipo-2[]" value="2" readonly="readonly" style="width: 100%; margin: 0 0 10px; padding: 3px">
                        <input type="text" class="text-center btn-danger" name="equipo-2[]" value="2" readonly="readonly" style="width: 100%; margin: 0 0 10px; padding: 3px">

                    </div>
                </div>
                <div class="col-lg-1"></div>
            </div>

            <br>

            <div class="row text-center">
                <div class="col-lg-12">
                    <button type="submit" value="" class="btn btn-primary">Generar Partido!</button>
                </div>
            </div>

            <div class="details">
                <input type="hidden" data-geo="lat" name="lat">
                <input type="hidden" data-geo="lon" name="lon">
                <input type="hidden" data-geo="formatted_address" name="direccion">
            </div>

        </form>

        <!-- Modal -->
        <div class="modal fade" id="myModal" data-backdrop="static" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content modal-agregar-jugador">
                    @include("player.add-simple")
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModalMap" data-backdrop="static" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content modal-agregar-jugador">
                    <div class="modal-header">
                        <div class="row">
                            <div class="col-lg-12 title">
                                <h1>Direccion de la cancha:</h1>
                            </div>
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="map_canvas" style="width: 570px;
                          height: 300px;
                          margin: 10px 20px 10px 0;"></div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Volver</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section("javascript")
    <script src="/propio/js/player/add.js"></script>
    <script src="/propio/js/match/index.js"></script>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
    <script src="/bower/ubilabs-geocomplete/jquery.geocomplete.js"></script>
@endsection