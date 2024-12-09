<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    use HasFactory;
    protected $table = "tests";
    protected $fillable = ['name', 'level'];

    public function questions()
    {
        return $this->belongsToMany(EQuestion::class, 'question_tests', 'id_test', 'id_question');
    }

    public function testHistories()
    {
        return $this->hasMany(TestHistory::class, 'id_test');
    }
}
