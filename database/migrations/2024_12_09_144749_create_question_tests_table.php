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
        Schema::create('question_tests', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_test');
            $table->foreign('id_test')->references('id')->on('tests')->onDelete('cascade');
            $table->unsignedInteger('id_question');
            $table->foreign('id_question')->references('id')->on('e_questions')->onDelete('cascade');
            // $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('question_tests');
    }
};
