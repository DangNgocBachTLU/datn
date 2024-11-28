@extends('main')

@section('title', 'ấu dề')

@section('content')
    {{-- <h2>{{ $test->name }}</h2>
    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Câu hỏi</th>
            </tr>
        </thead>
        <tbody>
            @foreach($questions as $key => $question)
            <tr>
                <td>{{ $key + 1 }}</td>
                <td>{{ $question->question }}</td>
            </tr>
            @endforeach
        </tbody>
    </table> --}}
    
    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="card-header mb-4">
                <h2>{{ $test->name }}</h2>
            </div>
            <div class="table-responsive">
                <form action="{{ route('test.submit') }}" method="POST">
                    @csrf
                    <table class="table">
                        <td class="col-md-9">
                                    @foreach($questions as $key => $question)
                                            <div class="card mb-2" style="width: 100%;">
                                                <div class="card-body">
                                                    <p>{{ $key + 1 }}. {{ $question->question }}</p>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" id="a">
                                                        <label class="form-check-label" for="a">
                                                            {{ $question->a }}
                                                        </label>
                                                    </div>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" id="b">
                                                        <label class="form-check-label" for="b">
                                                            {{ $question->b }}
                                                        </label>
                                                    </div>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" id="c">
                                                        <label class="form-check-label" for="c">
                                                            {{ $question->c }}
                                                        </label>
                                                    </div>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="answer_{{ $question->id }}" id="d">
                                                        <label class="form-check-label" for="d">
                                                            {{ $question->d }}
                                                        </label>
                                                    </div>

                                                </div>
                                            </div>
                                    @endforeach
                        </td>
                        <td>
                            <div class="card card-body">
                                <p>ấu dề</p>
                            </div>
                            <button type="submit" class="btn btn-primary">Nộp bài</button>
                        </td>
                    </table>
                </form>
            </div>
        </div>
    </div>
@endsection