@extends('Default.layout')
@section('content')
<link rel="stylesheet" href="{{ asset('css/site/menu.css') }}">


<form action="{{route('motorista.store')}}" method ="post">
    @csrf
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="">Nome</label>
            <input type="text" class="form-control" id="" placeholder="Digite seu Nome"name ="nome">
        </div>
        <div class="form-group col-md-6">
            <label for="">CPF</label>
            <input type="text" class="form-control" id="" placeholder="Digite seu CPF"name ="cpf_cnpj">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="">Número da CNH</label>
            <input type="text" class="form-control" id="" placeholder="Digite o número da sua CNH"name ="numero_cnh">
        </div>
        <div class="form-group col-md-6">
            <label for="">Telefone</label>
            <input type="text" class="form-control" id="" placeholder="Digite seu Telefone"name ="telefone">
        </div>
    </div>

    <button type="submit" class="btn btn-primary">Cadastre-se</button>
</form>

@endsection
