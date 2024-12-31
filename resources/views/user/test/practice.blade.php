@extends('main')

@section('title', 'Bài thi')

@section('content')
    
    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="card-header mb-4">
                <h2>{{ $test->name }}</h2>
            </div>
            <div class="table-responsive">
                <form action="{{ route('user.test.submit', ['id'=> $test->id]) }}" method="POST">
                    @csrf
                    <table class="table">
                        <td class="col-md-9">
                                    @foreach($questions as $key => $question)
                                            <div class="card mb-2" style="width: 100%;">
                                                <div class="card-body">
                                                    <p>{{ $key + 1 }}. {{ $question->question }}</p>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" value="a" id="a_{{ $question->id }}">
                                                        <label class="form-check-label" for="a_{{ $question->id }}">
                                                            {{ $question->a }}
                                                        </label>
                                                    </div>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" value="b" id="b_{{ $question->id }}">
                                                        <label class="form-check-label" for="b_{{ $question->id }}">
                                                            {{ $question->b }}
                                                        </label>
                                                    </div>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" value="c" id="c_{{ $question->id }}">
                                                        <label class="form-check-label" for="c_{{ $question->id }}">
                                                            {{ $question->c }}
                                                        </label>
                                                    </div>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" value="d" id="d_{{ $question->id }}">
                                                        <label class="form-check-label" for="d_{{ $question->id }}">
                                                            {{ $question->d }}
                                                        </label>
                                                    </div>

                                                </div>
                                            </div>
                                    @endforeach
                        </td>
                        <td>
                            <div class="card card-body mb-2 position-fixed text-center">
                                <p>Thời gian còn lại</p>
                                <div class="circle">
                                    <svg>
                                        <circle cx="70" cy="70" r="40"></circle>
                                        <circle cx="70" cy="70" r="40" id="time"></circle>
                                    </svg>
                                    <p id="countdown-timer"></p>
                                </div>
                                <button type="submit" class="btn btn-primary">Nộp bài</button>
                            </div>
                        </td>
                    </table>
                </form>
            </div>
        </div>
    </div>
@endsection