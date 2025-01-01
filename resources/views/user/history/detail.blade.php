@extends('main')

@section('title', 'Chi tiết bài làm')

@section('content')
    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="card-header mb-4">
                <h2>{{ $test->name }}</h2>
            </div>
            <div class="table-responsive">
                <table class="table">
                    <td class="col-md-9">
                        @foreach($questions as $key => $question)
                                <div class="card mb-2" style="width: 100%;">
                                    <div class="card-body">
                                        <p>{{ $key + 1 }}. {{ $question->question }} 
                                            @if($selectedAnswers[$question->id] == $question->correct_answer)
                                                <span class="text-success" style="font-weight: bold; margin-left: 10px;">Đúng</span>
                                            @else
                                                <span class="text-danger" style="font-weight: bold; margin-left: 10px;">Sai</span>
                                            @endif
                                        </p>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" value="a" id="a_{{ $question->id }}"
                                            @if(isset($selectedAnswers[$question->id]) && $selectedAnswers[$question->id] == 'a') checked @endif disabled>
                                            <label class="form-check-label" for="a_{{ $question->id }}">
                                                {{ $question->a }}
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" value="b" id="b_{{ $question->id }}"
                                            @if(isset($selectedAnswers[$question->id]) && $selectedAnswers[$question->id] == 'b') checked @endif disabled>
                                            <label class="form-check-label" for="b_{{ $question->id }}">
                                                {{ $question->b }}
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" value="c" id="c_{{ $question->id }}"
                                            @if(isset($selectedAnswers[$question->id]) && $selectedAnswers[$question->id] == 'c') checked @endif disabled>
                                            <label class="form-check-label" for="c_{{ $question->id }}">
                                                {{ $question->c }}
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" value="d" id="d_{{ $question->id }}"
                                            @if(isset($selectedAnswers[$question->id]) && $selectedAnswers[$question->id] == 'd') checked @endif disabled>
                                            <label class="form-check-label" for="d_{{ $question->id }}">
                                                {{ $question->d }}
                                            </label>
                                        </div>
                                    </div>
                                </div>
                        @endforeach
                    </td>
                </table>
            </div>
        </div>
    </div>
@endsection