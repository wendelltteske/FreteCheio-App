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
        Schema::create('especificao_carga', function (Blueprint $table) {
            $table->id();
            $table->foreignId('carga_id')->references('id')->on('carga');
            $table->foreignId('caracteristica_carga_id')->references('id')->on('caracteristica_carga');
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
        Schema::dropIfExists('especificao_carga');
    }
};
