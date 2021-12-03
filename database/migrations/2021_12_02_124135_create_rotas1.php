<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRotas1 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rotas1', function (Blueprint $table) {
            $table->increments('bloco');
            $table->timestamp('batch')->current();
            $table->string('entrada', 300);
            $table->string('chave', 8);
            $table->string('hash',300);
            $table->integer('tentativas')->unsigned();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rotas1');
    }
}
