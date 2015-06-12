@extends("layout")

@section("content")

    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center title">
                <h1>Felicidades!</h1>
            </div>
        </div>

        @if ( isset( $partido ) )

            <div class="row">
                <div class="col-lg-12 text-center">
                    <b>
                        <p>{{Auth::user()->name}}, acabas de generar el partido con el ID: {{$partido->partido_id}}.</p>
                        <p>Se ha enviado un mail a todos los jugadores con mail que hayas registrado. Recorda que los
                        mismos estaran disponibles en tu usuario, para proximos partidos.</p>
                        <p>Vas a poder completar el resultado del mismo, en las seccion "Mis Partidos" para que vayas llevando un
                            historial de como vienen esos resultados.</p>
                        <h3>Buen Partido!</h3>
                    </b>
                </div>
            </div>

        @else
            <div class="row">
                <div class="col-lg-12 text-center">
                    <b>
                        <p>Se ha enviado un mail a todos los jugadores con mail que hayas ingresado.</p>
                        <p>Armar un partidito esta bien, pero por que no llevar un historial de como vienen jugando?</p>
                        <p>Registrate papa, es cosa de dos minutos y vas a poder registrar tus jugadores, equipos y demas para
                         que sea mucho mas facil generar partidos.</p>
                        <h3>Buen Partido!</h3>
                    </b>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12 text-center">
                    <a href="/auth/register" class="btn btn-success">Registrarse!</a>
                </div>
            </div>
            <br />

        @endif

        <div class="row">
            <div class="col-lg-12 text-center">
                <a href="/" class="btn btn-success">Volver a la Home!</a>
            </div>
        </div>

    </div>
@endsection

@section("javascript")
@endsection