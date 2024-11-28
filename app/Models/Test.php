<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    use HasFactory;
    protected $table = "tests";
    protected $fillable = ['name'];

    public function questions()
    {
        return $this->hasMany(EQuestion::class, 'id_test', 'id'); 
    }

    public function testHistories()
    {
        return $this->hasMany(TestHistory::class, 'id_test');
    }
}
