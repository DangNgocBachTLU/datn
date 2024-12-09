@extends('index')

@section('title', 'Danh sách đề thi')

@section('title1', 'Danh sách đề thi')

@section('content')
    
    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="col-12">
                <a href="{{ route('admin.test.create') }}" class="btn btn-success ms-auto"><i class="fa-solid fa-plus"></i></a>
                @if($test->isEmpty())
                    <p>Không có đề thi.</p>
                @else
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <th>Tên đề thi</th>
                                <th>Độ khó</th>
                            </tr>
                            @foreach($test as $item)
                                <tr>
                                    <td>{{$item->name}}</td>
                                    <td>{{$item->level}}</td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                @endif
            </div>
        </div>
    </div>

@endsection