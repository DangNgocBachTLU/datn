@extends('main')

@section('title', 'Kết quả tìm kiếm')

@section('content')
    <div class="container">
        <div class="row" style="margin: 20px;">
            <div class="card-header">
                <h2>Kết quả tìm kiếm</h2>
            </div>
            @if($tests->isEmpty())
                <p>Không tìm thấy kết quả nào.</p>
            @else
                @foreach($tests as $item)
                    <div class="col-md-3 mb-4">
                        <div class="card" style="width: 100%;">
                            <div class="card-body">
                                <h5 class="card-title">{{ $item->name }}</h5>
                                <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-clock"></i> 25 phút | {{ $item->level }}</h6>
                                <p class="card-text"></p>
                                @if(Auth::check())
                                    <a href="{{ route('user.test.practice', $item->id) }}" class="btn btn-outline-primary">Bắt đầu làm bài</a>
                                @else
                                    <a class="btn btn-outline-success" href=" {{ route('user.auth.loginform') }} ">Đăng nhập để làm bài</a>
                                @endif
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
@endsection
