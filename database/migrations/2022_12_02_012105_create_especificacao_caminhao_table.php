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
        Schema::create('especificacao_caminhao', function (Blueprint $table) {
            $table->id();
            $table->foreignId('caminhao_id')->references('id')->on('caminhao');
            $table->foreignId('caracteristica_caminhao_id')->references('id')->on('caracteristica_caminhao');
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
        Schema::dropIfExists('especificacao_caminhao');
    }
};
