<!DOCTYPE HTML>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Frete Cheio</title>
  <link rel="stylesheet" href="{{ asset('css/main.css') }}">
  <link rel="stylesheet" href="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css') }}">
  <link rel="stylesheet" href="{{ asset('css/site/footer.css') }}">
  <link rel="stylesheet" href="{{ asset('css/Bootstrap/bootstrap.css') }}">
</head>
<body>
    @include('Default.header')
    @include('Default.cookies')
    @yield('content')
    @include('Default.footer')
</body>
</html>