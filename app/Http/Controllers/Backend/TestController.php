<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Test;
use Illuminate\Support\Facades\DB;
use App\Models\EQuestion;
use App\Models\TestHistory;
use Illuminate\Support\Facades\Route;

class TestController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $test = Test::get();
        if(Route::currentRouteName() == 'user.test.list'){
            return view('user.test.list', compact('test'));
        }
        if(Route::currentRouteName() == 'admin.test.list'){
            return view('admin.test.list', compact('test'));
        }        
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.test.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $test = Test::find($id);
        $questions = $test->questions;

        return view('user.test.practice', compact('test', 'questions'));
    }

    public function submit(Request $request, $id)
    {
        $userId = auth()->id();
        $questions = EQuestion::where('id_test', $id)->get();
        $score = 0;
        $numberQuestions = 0;
        $totalQuestions = $questions->count();

        foreach ($questions as $question) {
            $answerKey = 'answer_' . $question->id;
            if ($request->has($answerKey) && $request->input($answerKey) === $question->correct_answer) {
                $score += 2;
                $numberQuestions++;
            }
        }
        DB::table('test_history')->insert([
            'id_user' => $userId,
            'id_test' => $id,
            'score' => $score,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return view('user.test.result', compact('score', 'numberQuestions', 'totalQuestions', 'id'));
    }

    public function history(){
        $userId = auth()->id();
        $history = TestHistory::with('test')->where('id_user', $userId)->get();
        return view('user.test.history', compact('history'));
    }

    public function search(Request $request)
    {
        $search = $request->input('search');
        $tests = Test::where('name', 'like', '%'.$search.'%')->get();
        return view('user.test.search', compact('tests'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
