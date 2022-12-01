<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CadastroMotoristaController extends Controller
{
    public function cadastromotorista() {
        return view('site.motorista.cadastro_motorista');
    }
}
