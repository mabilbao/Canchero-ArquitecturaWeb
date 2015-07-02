@extends("layout")

@section("content")

    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center title">
                <h1>Tus jugadores!</h1>
            </div>
        </div>

        @if ( isset( $jugadores ) )

            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            @foreach( $jugadores as $j)
                                <tr>
                                    <td><label>{{$j->jugador_id}}</label></td>
                                    <td><label>{{$j->nombre}}</label></td>
                                    <td><label>{{$j->apodo}}</label></td>
                                    <td>
                                        <button type="button" class="btn btn-success mostrar-jugador"
                                                data-jugador="{{$j->jugador_id}}"
                                                data-nombre="{{$j->nombre}}"
                                                data-apodo="{{$j->apodo}}"
                                                data-email="{{$j->email}}"
                                                data-foto="{{$j->foto_url}}"
                                                >Ver!</button>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="myModal" data-backdrop="static" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content modal-agregar-jugador">
                        @include("player.add-simple")
                    </div>
                </div>
            </div>
        @else
            <div class="row">
                <div class="col-lg-12 text-center">
                    <b>
                        Lo sentimos, no posees jugadores!
                    </b>
                </div>
            </div>
        @endif

    </div>
@endsection

@section("javascript")
    <script src="/propio/js/player/players.js"></script>
@endsection