<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuestionTest extends Model
{
    use HasFactory;

    protected $table = "question_tests";
    protected $fillable = ['id_test', 'id_question'];
    public $timestamps = false;
}
