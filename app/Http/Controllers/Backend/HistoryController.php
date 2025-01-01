<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\DetailedHistory;
use App\Models\TestHistory;

class HistoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('user.history.detail');
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
        $testHistory = TestHistory::find($id);
        $test = $testHistory->test;
        $questions = $test->questions;
        $detailHistory = DetailedHistory::where('id_history', $id)->get();
        $selectedAnswers = $detailHistory->pluck('selected_answer', 'id_question')->toArray();

        return view('user.history.detail', compact('test', 'questions', 'selectedAnswers'));
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
