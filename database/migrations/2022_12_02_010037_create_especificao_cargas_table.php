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
        Schema::create('especificao_cargas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('cargas_id')->references('id')->on('cargas');
            $table->foreignId('caracteristica_cargas_id')->references('id')->on('caracteristica_cargas');
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
