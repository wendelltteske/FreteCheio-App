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
        Schema::create('caminhao', function (Blueprint $table) {
            $table->id();
            $table->foreignId('motorista_id')->references('id')->on('motorista');
            $table->string("modelo")->notnull();
            $table->string("marca")->notnull();
            $table->year("ano")->notnull();
            $table->float("peso_max")->notnull();
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
        Schema::dropIfExists('caminhao');
    }
};
