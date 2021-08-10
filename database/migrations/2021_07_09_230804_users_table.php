<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
			$table->string('first_name');
			$table->string('last_name');
			$table->string('user_name');
			$table->string('url');
			$table->string('graecus');
			$table->string('email');
			$table->string('web');
			$table->string('facebook');
			$table->string('twitter');
			$table->string('gsm');
			$table->string('image');
			$table->string('password');
			$table->integer('status')->default(0);
			$table->integer('auth')->default(0);
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
        Schema::dropIfExists('users');
    }
}
