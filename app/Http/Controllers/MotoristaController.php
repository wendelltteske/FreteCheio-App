<?php

namespace App\Http\Controllers;

use App\Models\Motorista;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class MotoristaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('site.motorista.cadastro_motorista');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $motorista =  new Motorista();
        $motorista->nome = $request->nome;
        $motorista->cpf_cnpj = $request->cpf_cnpj;
        $motorista->telefone = $request->telefone;
        $motorista->numero_cnh = $request->numero_cnh;
        $motorista->save();
        dd($request);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Motorista  $motorista
     * @return \Illuminate\Http\Response
     */
    public function show(Motorista $motorista)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Motorista  $motorista
     * @return \Illuminate\Http\Response
     */
    public function edit(Motorista $motorista)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Motorista  $motorista
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Motorista $motorista)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Motorista  $motorista
     * @return \Illuminate\Http\Response
     */
    public function destroy(Motorista $motorista)
    {
        //
    }
}
