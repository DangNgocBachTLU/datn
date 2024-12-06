<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('test_history', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_test');
            $table->foreign('id_test')->references('id')->on('tests')->onDelete('cascade');
            $table->unsignedInteger('id_user');
            $table->foreign('id_user')->references('id')->on('users')->onDelete('cascade');
            $table->integer('score');
            $table->timestamps();
        });
        Schema::table('e_questions', function (Blueprint $table) {
            $table->dropColumn('updated_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('test_history');
    }
};
