@extends('index')

@section('title', 'Danh sách câu hỏi')

@section('title1', 'Danh sách câu hỏi')

@section('content')
    
    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="col-12">
                <div class="table-responsive">
                    <a href="{{ route('admin.question.create') }}" class="btn btn-success ms-auto"><i class="fa-solid fa-plus"></i></a>
                    <table class="table">
                        <tr>
                            <th>Câu hỏi</th>
                            <th>Đáp án A</th>
                            <th>Đáp án B</th>
                            <th>Đáp án C</th>
                            <th>Đáp án D</th>
                            <th>Đáp án đúng</th>
                            <th>Độ khó</th>
                        </tr>
                        @foreach($questions as $item)
                            <tr>
                                <td>{{$item->question}}</td>
                                <td>{{$item->a}}</td>
                                <td>{{$item->b}}</td>
                                <td>{{$item->c}}</td>
                                <td>{{$item->d}}</td>
                                <td>{{$item->correct_answer}}</td>
                                <td>{{$item->level}}</td>
                                <td>
                                    <a href="{{ route('admin.question.edit', $item->id) }}" class="btn btn-warning"><i class="fa-solid fa-pen-to-square"></i></a>
                                </td>
                                <td>
                                    <a href="{{-- route('question.delete', $item->id) --}}" class="btn btn-danger"><i class="fa-solid fa-delete-left"></i></a>
                                </td>
                            </tr>
                        @endforeach
                    </table>

                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                            {{ $questions->links('pagination::bootstrap-4') }}
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

@endsection