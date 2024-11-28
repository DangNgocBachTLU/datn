<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EQuestion extends Model
{
    use HasFactory;
    protected $table = "e_questions";
    protected $fillable = ['question', 'a', 'b', 'c', 'd','correct_answer', 'id_test'];

    public function test()
    {
        return $this->belongsTo(Test::class, 'id_test', 'id'); 
    }
}