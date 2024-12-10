<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Test;

class HomepageController extends Controller
{
    public function __construct(){

    }

    public function index(){
        $test = Test::orderBy('id', 'desc')->paginate(3);
        return view('user.homepage.index',compact('test'));
    }

}