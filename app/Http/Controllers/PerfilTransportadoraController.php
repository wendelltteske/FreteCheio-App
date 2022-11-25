<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PerfilTransportadoraController extends Controller
{
    public function perfiltransportadora() {
        return view('site.transportadora.perfiltransportadora');
    }
}
