<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginTransportadoraController extends Controller
{
    public function logintransportadora() {
        return view('site.transportadora.logintransportadora');
    }
}
