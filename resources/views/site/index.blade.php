@extends('Default.layout')
<link rel="stylesheet" href="{{ asset('css/main.css') }}">
@section('content')

<body>
  <div class="container">
    <div class="container-text">
      <h2 id="title">Selecionar Perfil</h2>
      <ul>
        <a href="{{route('transportadora.logintransportadora')}}"><i id="icon" class="fa fa-building"></i>Transportadora</a>
        <p>Registre cargas e encontre motoristas, utilizando um dashboard dinâmico</p>
        <a href="{{route('motorista.login_motorista')}}"><i id="icon" class="fa fa-truck"></i>Web Motorista</a>
        <p>Faça requisições para transportadoras, aumente seus clientes</p>
        <a href="#"><i id="icon" class="fa fa-whatsapp"></i>Motorista</a>
        <p>Aceite entregas, acompanhe sua reputação através do ChatBot pelo WhatsApp</p>
      </ul>
    </div>
    <div class="container-img">
      <div class="box">
        <img src="{{ asset('img/img.meio/banner.gif') }}">
        <p>Renda extra, agilidade e economia no transporte</p>
      </div>
      <img id="logo" src="{{ asset('img/img.meio/logo-app-png.png') }}" alt="logo">
    </div>
  </div>
</body>
@endsection
