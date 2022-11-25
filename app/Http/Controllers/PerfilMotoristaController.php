<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PerfilMotoristaController extends Controller
{
    public function perfil_motorista() {
        return view('site.perfil_motorista');
    }
}
