<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="/propio/image/pelota-icono-2.png" />
        <title>Canchero</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta id="application-environment" data-environment="{{App::environment()}}" />

        {{--Bootstrap --}}
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="/bower/bootstrap/dist/css/bootstrap.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="/bower/bootstrap/dist/css/bootstrap-theme.min.css">

        <link rel="stylesheet" href="/propio/css/global.css">

    </head>
    <div id="background"></div>
    <body>
        <div id="wrapper">
            <div id="header">
                    <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle Navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">Canchero!</a>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li><a href="/">Home</a></li>
                                <li><a href="/match/">Organizar partido</a></li>
                                @if ( Auth::check() )
                                    <li><a href="/">Historial de Partidos (Proximamente!)</a></li>
                                    <li><a href="/players">Mis jugadores</a></li>
                                @endif
                            </ul>

                            <ul class="nav navbar-nav navbar-right">
                                @if (Auth::guest())
                                    <li><a href="/auth/login">Login</a></li>
                                    <li><a href="/auth/register">Registrate!</a></li>
                                @else
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{{ Auth::user()->name }} <span class="caret"></span></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="/auth/logout">Logout</a></li>
                                        </ul>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>

            {{-- Contenido de las diferentes pantallas --}}
            <div id="content">
                @yield('content')
            </div>

            <div id="footer">
                <footer>
                    <nav class="navbar navbar-default">
                        <div class="container-fluid text-center">
                            <p>Canchero S.A.</p>
                        </div>
                    </nav>
                </footer>
            </div>
        </div>
        {{--Jquery--}}
        {{--<script src="/bower/jquery/dist/jquery.js"></script>--}}
        <script src="/bower/jquery/dist/jquery.min.js"></script>

        {{--Bootstrap --}}
        <!-- Latest compiled and minified JavaScript -->
        <script src="/bower/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- cdn for modernizr, if you haven't included it already -->
        <script src="http://cdn.jsdelivr.net/webshim/1.12.4/extras/modernizr-custom.js"></script>
        <!-- polyfiller file to detect and load polyfills -->
        <script src="http://cdn.jsdelivr.net/webshim/1.12.4/polyfiller.js"></script>
        <script>
            webshims.setOptions('waitReady', false);
            webshims.setOptions('forms-ext', {types: 'date'});
            webshims.polyfill('forms forms-ext');
        </script>

        {{--Cotenido javascript para cada pagina en particualar--}}
        @yield('javascript')

    </body>
</html>