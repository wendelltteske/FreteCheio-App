<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('motoristas', function (Blueprint $table) {
            $table->id();
            $table->string("nome")->notnull();
            $table->string("cpf_cnpj")->notnull();
            $table->string("telefone")->notnull();
            $table->string("numero_cnh")->notnull();
            $table->string("foto_frontal_cnh")->nullable();
            $table->string("foto_traseira_cnh")->nullable();
            $table->string("foto_pessoal")->nullable();
            $table->string("status")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('motorista');
    }
};
