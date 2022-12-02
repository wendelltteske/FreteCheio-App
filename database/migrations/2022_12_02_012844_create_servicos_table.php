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
        Schema::create('servicos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('motoristas_id')->references('id')->on('motoristas');
            $table->foreignId('caminhoes_id')->references('id')->on('caminhoes');
            $table->float("valor_frete")->notnull();
            $table->datetime("data_aceite")->nulllabel();
            $table->datetime("data_incio_servico")->nulllabel();
            $table->datetime("data_termino")->nulllabel();
            $table->text("descricao")->nulllabel();
            $table->string("status")->nulllabel();
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
        Schema::dropIfExists('servico');
    }
};
