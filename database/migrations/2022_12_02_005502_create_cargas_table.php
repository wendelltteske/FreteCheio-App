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
        Schema::create('cargas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('empresas_id')->references('id')->on('empresas');
            $table->float('peso')->notnull();
            $table->float('largura')->notnull();
            $table->float('comprimento')->notnull();
            $table->float('altura')->notnull();
            $table->datetime("data_entrega")->notnull();
            $table->text('descricao')->nullable();
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
        Schema::dropIfExists('carga');
    }
};
