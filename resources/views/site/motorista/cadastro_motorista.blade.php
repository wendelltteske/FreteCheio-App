@extends('Default.layout')
@section('content')
    <link rel="stylesheet" href="{{ asset('css/site/menu.css') }}">
    <script src="{{ asset('js/validacoes.js') }}"></script>

    <form action="{{ route('motorista.store') }}" method="post">
        @csrf
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="nome_motorista">Nome</label>
                <input type="text" class="form-control" id="nome_motorista" placeholder="Digite seu Nome"name="nome"
                    required>
            </div>
            <div class="form-group col-md-6">
                <label for="">CPF ou CNPJ</label>
                <input type="text" class="form-control" id="cpf_cnpj_motorista"
                    placeholder="Digite seu CPF"name="cpf_cnpj" required onkeypress="return event.charCode >= 48 && event.charCode <= 57">
                <label id="aviso_cpf" class = "mt-1"></label>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="cnh_motorista">Número da CNH</label>
                <input type="text" class="form-control" id="cnh_motorista"
                    placeholder="Digite o número da sua CNH"name="numero_cnh" required>
            </div>
            <div class="form-group col-md-6">
                <label for="telefone_motorista">Telefone</label>
                <input type="text" class="form-control" id="telefone_motorista"
                    placeholder="Digite seu Telefone"name="telefone" required>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Cadastre-se</button>
    </form>
    <script>
        // Mascara para CPF_CNPJ
        $("#cpf_cnpj_motorista").keypress(function() {

            if ($('#cpf_cnpj_motorista').val().length >= 14) {
                $("#cpf_cnpj_motorista").mask("00.000.000/0000-00");
            } else {
                $("#cpf_cnpj_motorista").mask("000.000.000-00");
                
            }
        });
        $("#cpf_cnpj_motorista").keyup(function() {
            if ($('#cpf_cnpj_motorista').val().length == 14) {
                let cpf = $('#cpf_cnpj_motorista').val();
                let resposta = validaCPF(cpf);
                $('#aviso_cpf').text(""); 
                if(resposta !=  true){
                   $('#aviso_cpf').text(resposta); 
                }else{
                    $('#aviso_cpf').text("CPF válido"); 
                }
            }
        });
        //MASCARA TELEFONE MOTORISTA
        $("#telefone_motorista").mask("(00) 000000-0000");
        //MASCARA CNH MOTORISTA
        $("#cnh_motorista").mask("000000000000");
    </script>
@endsection
