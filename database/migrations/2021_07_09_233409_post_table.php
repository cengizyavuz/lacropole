<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PostTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
			$table->integer('issue');
			$table->integer('kind');
			$table->integer('author')->nullable();;
			$table->integer('category');
			$table->string('title');
			$table->string('slug');
			$table->string('spot')->nullable();;
			$table->string('image')->nullable();;
			$table->integer('hit')->default(100);
			$table->integer('headline')->default(0);
			$table->integer('painter')->nullable();
			$table->integer('status')->default(1);
			$table->longText('content');
			$table->softDeletes();
            $table->timestamps();
			
			$table->foreign('issue')->references('issue')->on('periods')->onDelete('cascade');
			//$table->foreign('kind_id')->references('id')->on('post_kinds')->onDelete('cascade');
			//$table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
			//$table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
			
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
}
