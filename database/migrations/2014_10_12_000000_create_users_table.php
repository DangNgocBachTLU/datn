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
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 255);
            $table->string('phone', 20)->nullable();
            $table->string('email', 255)->unique();
            $table->enum('gender', ['Nam', 'Nữ', 'Khác'])->nullable();
            $table->string('gender', 10)->nullable();
            $table->string('username', 255)->unique();
            $table->string('password', 255);
            $table->timestamps();
            // $table->rememberToken();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
