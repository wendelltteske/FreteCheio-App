<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [\App\Http\Controllers\PrincipalController::class, 'principal'])->name('site.principal');
Route::get('/login', [\App\Http\Controllers\LoginController::class, 'login'])->name('site.login');
Route::get('/sobrenos', [\App\Http\Controllers\SobreNosController::class, 'sobrenos'])->name('site.sobrenos');
Route::get('/contato', [\App\Http\Controllers\ContatoController::class, 'contato'])->name('site.contato');

Route::prefix('/transportadora')->group(function(){
    Route::get('/perfiltransportadora', [\App\Http\Controllers\PerfilTransportadoraController::class, 'perfiltransportadora'])->name('transportadora.perfiltransportadora');
    Route::get('/cadastrotransportadora', [\App\Http\Controllers\CadastroTransportadoraController::class, 'cadastrotransportadora'])->name('transportadora.cadastrotransportadora');
    Route::get('/logintransportadora', [\App\Http\Controllers\LoginTransportadoraController::class, 'logintransportadora'])->name('transportadora.logintransportadora');
});

Route::prefix('/motorista')->group(function(){
    Route::get('/cadastro_motorista', [\App\Http\Controllers\CadastroMotoristaController::class, 'cadastro_motorista'])->name('motorista.cadastro_motorista');
    Route::get('/perfil_motorista', [\App\Http\Controllers\PerfilMotoristaController::class, 'perfil_motorista'])->name('motorista.perfil_motorista');
    Route::get('/login_motorista', [\App\Http\Controllers\LoginMotoristaController::class, 'login_motorista'])->name('motorista.login_motorista');
});

