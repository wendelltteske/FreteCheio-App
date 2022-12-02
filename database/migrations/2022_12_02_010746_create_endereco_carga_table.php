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
        Schema::create('endereco_carga', function (Blueprint $table) {
            $table->id();
            $table->foreignId('carga_id')->references('id')->on('carga');
            $table->foreignId('ponto_carga_id')->references('id')->on('ponto_carga');
            $table->string('cep')->notnull();
            $table->string('rua')->notnull();
            $table->string('numero')->notnull();
            $table->string('bairro')->notnull();
            $table->string('bloco')->nullable();
            $table->text('observacoes')->nullable();
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
        Schema::dropIfExists('endereco_carga');
    }
};
