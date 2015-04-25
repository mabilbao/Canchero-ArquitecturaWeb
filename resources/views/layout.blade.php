<!DOCTYPE html>
<html>
    <head>
        {{--Bootstrap --}}
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="/bower/bootstrap/dist/css/bootstrap.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="/bower/bootstrap/dist/css/bootstrap-theme.min.css">

        <link rel="stylesheet" href="/propio/css/global.css">

        <title>Canchero</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        {{--<link rel="stylesheet" href="/css/main.css?" type="text/css"/>--}}
        <meta id="application-environment" data-environment="{{App::environment()}}" />

    </head>
    <div id="background"></div>
    <body>
        {{-- Contenido de las diferentes pantallas --}}
        @yield('content')

        {{--Jquery--}}
        <script src="/bower/jquery/dist/jquery.js"></script>
        <script src="/bower/jquery/dist/jquery.min.js"></script>
        {{--<script src="/bower/jquery/jquery-ui.min.js"></script>--}}

        {{--Bootstrap --}}
        <!-- Latest compiled and minified JavaScript -->
        <script src="/bower/bootstrap/dist/js/bootstrap.min.js"></script>

        {{--Cotenido javascript para cada pagina en particualar--}}
        @yield('javascript')
    </body>
</html>