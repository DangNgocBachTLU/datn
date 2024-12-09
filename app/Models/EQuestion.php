<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EQuestion extends Model
{
    use HasFactory;
    protected $table = "e_questions";
    protected $fillable = ['question', 'a', 'b', 'c', 'd','correct_answer', 'level', 'id_test'];

    // public function tests()
    // {
    //     return $this->belongsToMany(Test::class, 'question_tests', 'id_question', 'id_test');
    // }
}