<!DOCTYPE html>
<html>
    <head>
        {{--Bootstrap --}}
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="/bower/bootstrap/bootstrap.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="/bower/bootstrap/bootstrap-theme.min.css">

        <title>Canchero</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        {{--<link rel="stylesheet" href="/css/main.css?" type="text/css"/>--}}
        <meta id="application-environment" data-environment="{{App::environment()}}" />

    </head>

    <body>
        {{-- Contenido de las diferentes pantallas --}}
        @yield('content')

        {{--Jquery--}}
        <script src="/bower/jquery/jquery.js"></script>
        <script src="/bower/jquery/jquery.min.js"></script>
        {{--<script src="/bower/jquery/jquery-ui.min.js"></script>--}}

        {{--Bootstrap --}}
        <!-- Latest compiled and minified JavaScript -->
        <script src="/bower/bootstrap/bootstrap.min.js"></script>

        {{--Cotenido javascript para cada pagina en particualar--}}
        @yield('javascript')
    </body>
</html>