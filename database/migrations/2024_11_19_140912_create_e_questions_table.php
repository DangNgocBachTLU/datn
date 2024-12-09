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
        Schema::create('e_questions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('question', 255);
            $table->string('a', 255);
            $table->string('b', 255);
            $table->string('c', 255);
            $table->string('d', 255);
            $table->enum('correct_answer', ['a', 'b', 'c', 'd']);
            $table->enum('level', ['Dễ', 'Trung bình', 'Khó'])->nullable();
            $table->unsignedInteger('id_test');
            // Thiết lập ràng buộc khóa ngoại
            $table->foreign('id_test')->references('id')->on('tests')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('e_questions');
    }
};
