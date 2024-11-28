<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Test;
use Illuminate\Support\Facades\DB;
use App\Models\EQuestion;

class TestController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $test = Test::get();
        return view('test.list', compact('test'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
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

        return view('test.practice', compact('test', 'questions'));
    }

    public function submit(Request $request){
        $answers = $request->input('answers'); // Lấy dữ liệu từ form
        $questionIds = array_keys($answers); // Lấy danh sách ID câu hỏi

        // Lấy danh sách câu hỏi từ database
        $questions = EQuestion::whereIn('id', $questionIds)->get();

        $score = 0; // Điểm số ban đầu
        $totalQuestions = count($questions); // Tổng số câu hỏi

        foreach ($questions as $question) {
            // So sánh đáp án
            if (isset($answers[$question->id]) && $answers[$question->id] === $question->correct_answer) {
                $score++; // Tăng điểm nếu đúng
            }
        }

        // Trả về kết quả
        return view('test.result', [
            'score' => $score,
            'totalQuestions' => $totalQuestions,
        ]);
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
