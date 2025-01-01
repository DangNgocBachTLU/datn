<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DetailedHistory extends Model
{
    use HasFactory;
    protected $table = 'detailed_history';
    protected $fillable = ['id_history', 'id_question', 'selected_answer',];
    public $timestamps = false;
    
}
