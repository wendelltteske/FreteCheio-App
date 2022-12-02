@extends('Default.layout')
@section('content')
    <link rel="stylesheet" href="{{ asset('css/site/menu.css') }}">
    <form action="{{route('transportadora.store')}}" method ="post">
        @csrf
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="nome_trasnpostadora">Nome</label>
                <input type="text" class="form-control" id="nome_trasnpostadora" placeholder="Digite seu Nome"name ="nome" required>
            </div>
            <div class="form-group col-md-6">
                <label for="cnpj_trasnpostadora">CNPJ</label>
                <input type="text" class="form-control" id="cnpj_trasnpostadora" placeholder="Digite seu CPF"name ="cnpj" required>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="email_trasnpostadora">Email</label>
                <input type="email" class="form-control" id="email_trasnpostadora" placeholder="Digite seu email"name ="email" required>
            </div>
            <div class="form-group col-md-6">
                <label for="telefone_transportadora">Telefone</label>
                <input type="text" class="form-control" id="telefone_transportadora" placeholder="Digite seu Telefone"name ="telefone" required>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="senha_transportadora">Senha</label>
                <input type="text" class="form-control" id="senha_transportadora" placeholder="Digite sua senha"name ="senha" required>
            </div> 
            <div class="form-group col-md-6">
                <label for="">Confirmação senha</label>
                <input type="text" class="form-control" id="" placeholder="Digite novamente sua senha" required> 
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Cadastre-se</button>
    </form>
    <script>
        //MASCARA  TELEFONE TRANSPORTADORA
        $("#telefone_transportadora").mask("(00) 000000-0000");
        //MASCARA CNPJ TRANASPORTADORA
        $("#cnpj_trasnpostadora").mask("00.000.000/0000-00");
    <script>
@endsection
