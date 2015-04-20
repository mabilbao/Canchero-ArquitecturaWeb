<!DOCTYPE html>
<html>
    <head>
        <title>Canchero</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="/css/main.css?" type="text/css"/>
        <meta id="application-environment" data-environment="{{App::environment()}}" />


        {{--Bootstrap --}}
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>


    </head>

    <body>
        {{-- Contenido de las diferentes pantallas --}}
        @yield('content')

        {{--Cotenido javascript para cada pagina en particualar--}}
        @yield('javascript')
    </body>
</html>