<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TestHistory extends Model
{
    use HasFactory;
    protected $table = "test_history";
    protected $fillable = ['id_test','id_user','score'];

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }

    public function test()
    {
        return $this->belongsTo(Test::class, 'id_test');
    }
}
