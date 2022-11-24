<!DOCTYPE HTML>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Frete-cheio</title>
    <!-- CSS only -->
    <link rel="stylesheet" href="{{ asset('css/Bootstrap/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('css/main.css') }}">
    <script src="{{ asset('js/Jquery/jquery.js') }}"></script>
    <script src="{{ asset('js/Bootstrap/bootstrap.js') }}"></script>
    <script src="{{ asset('js/Jquery/jquery.mask.min.js') }}"></script>

</head>

<body>

    @include('Default.header')
    @yield('content')
    @include('Default.footer')
</body>



</html>
