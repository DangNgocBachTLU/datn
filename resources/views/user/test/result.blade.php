@extends('main')

@section('title', 'Kết quả bài thi')

@section('content')

    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="card-header mb-4">
                <h2>Kết quả bài thi</h2>
            </div>
            <div class="container">
                <p>Điểm số: {{ $numberQuestions*2 }}/{{ $totalQuestions*2 }}</p>
                <p>Số câu trả lời đúng: {{ $numberQuestions }}/{{ $totalQuestions }}</p>
                <a href="{{ Route('user.history.detail', $historyId) }}" class="btn btn-primary">Chi tiết</a>
                <a href="{{ route('user.test.practice', $id) }}" class="btn btn-success">Làm lại</a>
                <a href="{{ route('user.test.list') }}" class="btn btn-danger">Thoát</a>
            </div>
        </div>
    </div>

@endsection