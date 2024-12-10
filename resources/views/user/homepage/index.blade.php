@extends('main')

@section('title','Trang chủ')

@section('content')
    <div class="container">
        <div id="carouselExampleDark" class="carousel carousel-dark slide mt-5">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/img_home.png" class="d-block w-75 mx-auto rounded" alt="Image">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div class="mt-5 text-center">
            <div class="mx-auto">
                <h2 class="fw-bold">Đề thi mới nhất</h2>
                <div class="d-flex flex-wrap justify-content-center">
                    @foreach($test as $item)
                        <div class="card m-3" style="width: 15rem;">
                            <div class="card-body">
                                <h5 class="card-title">{{ $item->name }}</h5>
                                <h6 class="card-subtitle mb-2 text-body-secondary">
                                    <i class="fa-regular fa-clock"></i> 25 phút | {{ $item->level }}
                                </h6>
                                @if(Auth::check())
                                    <a href="{{ route('user.test.practice', $item->id) }}" class="btn btn-outline-primary">Bắt đầu làm bài</a>
                                @else
                                    <a class="btn btn-outline-success" href="{{ route('user.auth.loginform') }}">Đăng nhập để làm bài</a>
                                @endif
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection