<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginMotoristaController extends Controller
{
    public function login_motorista() {
        return view('site.motorista.login_motorista');
    }
}
