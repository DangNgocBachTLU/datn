@extends('main')

@section('title','Trang chủ')

@section('content')
    <div id="carouselExampleDark" class="carousel carousel-dark slide mt-3">
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
@endsection