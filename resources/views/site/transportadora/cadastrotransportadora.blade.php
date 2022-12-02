@extends('Default.layout')
@section('content')
    <link rel="stylesheet" href="{{ asset('css/site/menu.css') }}">
    <form action="{{route('transportadora.store')}}" method ="post">
        @csrf
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="">Nome</label>
                <input type="text" class="form-control" id="" placeholder="Digite seu Nome"name ="nome">
            </div>
            <div class="form-group col-md-6">
                <label for="">CPF</label>
                <input type="text" class="form-control" id="" placeholder="Digite seu CPF"name ="cpf">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="">Email</label>
                <input type="email" class="form-control" id="" placeholder="Digite seu email"name ="email">
            </div>
            <div class="form-group col-md-6">
                <label for="">Telefone</label>
                <input type="text" class="form-control" id="" placeholder="Digite seu Telefone"name ="telefone">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="">Senha</label>
                <input type="text" class="form-control" id="" placeholder="Digite sua senha"name ="senha">
            </div>
            <div class="form-group col-md-6">
                <label for="">Confirmação senha</label>
                <input type="text" class="form-control" id="" placeholder="Digite novamente sua senha">
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Cadastre-se</button>
    </form>
@endsection
