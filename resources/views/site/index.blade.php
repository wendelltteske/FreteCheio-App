@extends('Default.layout')
<link rel="stylesheet" href="{{ asset('css/main.css') }}">
@section('content')

    <div class="container-fluid">
        <div class="row">
            <div class="container-text col-sm-4">
                <h2 id="title">Selecionar Perfil</h2>
                <ul>
                    <a href="{{route('transportadora.create')}}"><i id="" class="fa fa-building icon"></i>Transportadora</a>
                    <p>Registre cargas e encontre motoristas, utilizando um dashboard dinâmico</p>
                    <a href="{{route('motorista.create')}}"><i id="" class="fa fa-truck icon"></i>Web Motorista</a>
                    <p>Faça requisições para transportadoras, aumente seus clientes</p>
                    <a href=""><i id="" class="fa fa-whatsapp icon"></i>Motorista</a>
                    <p>Aceite entregas, acompanhe sua reputação através do ChatBot pelo WhatsApp</p>
                </ul>
            </div>
            <div class="container-img col-sm-8">
                <div class="box">
                    <img src="{{ asset('img/img.meio/banner.gif') }}">
                    <p>Renda extra, agilidade e economia no transporte</p>
                </div>
                <img id="logo" src="{{ asset('img/img.meio/logo-app-png.png') }}" alt="logo">
            </div>
        </div>
    </div>
@endsection
