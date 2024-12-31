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
        Schema::create('detailed_history', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_history');
            $table->foreign('id_history')->references('id')->on('test_history')->onDelete('cascade');
            $table->unsignedInteger('id_question');
            $table->foreign('id_question')->references('id')->on('e_questions')->onDelete('cascade');
            $table->enum('selected_answer', ['a', 'b', 'c', 'd'])->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('detailed_history');
    }
};
