@extends('main')

@section('title', 'Lịch sử làm bài')

@section('content')

    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="col-12">
                <div class="card-header">
                    <h2>Lịch sử làm bài</h2>
                </div>
                @if($history->isEmpty())
                    <p>Không có lịch sử làm bài.</p>
                @else
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <th>Đề thi</th>
                                <th>Điểm</th>
                                <th>Ngày làm bài</th>
                            </tr>
                            @foreach($history as $item)
                                <tr>
                                    <td>{{$item->test->name}}</td>
                                    <td>{{$item->score}}</td>
                                    <td>{{$item->created_at->format('d/m/Y')}}</td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                @endif
            </div>
        </div>
    </div>

@endsection