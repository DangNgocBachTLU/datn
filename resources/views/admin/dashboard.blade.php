@extends('index')

@section('title', 'Dashboard')

@section('title1', 'Dashboard')

@section('content')
    <div class="row justify-content-start pt-5">
        <div class="col-md-4 mb-4">
            <div class="card" style="width: 100%;">
                <div class="card-body bg-danger text-center">
                    <h5 class="card-title"><i class="fa-solid fa-user"></i></h5>
                    <h6 class="card-subtitle mb-2 text-body-secondary">Người dùng</h6>
                    <h6 class="card-subtitle mb-2 text-body-secondary">{{ $userCount }}</h6>
                    <p class="card-text"></p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card" style="width: 100%;">
                <div class="card-body bg-success text-center">
                    <h5 class="card-title"><i class="fa-solid fa-list"></i></h5>
                    <h6 class="card-subtitle mb-2 text-body-secondary">Đề thi</h6>
                    <h6 class="card-subtitle mb-2 text-body-secondary">{{ $testCount }}</h6>
                    <p class="card-text"></p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card" style="width: 100%;">
                <div class="card-body bg-primary text-center">
                    <h5 class="card-title"><i class="fa-solid fa-pen-nib"></i></h5>
                    <h6 class="card-subtitle mb-2 text-body-secondary">Lượt thi</h6>
                    <h6 class="card-subtitle mb-2 text-body-secondary">{{ $attemptCount }}</h6>
                    <p class="card-text"></p>
                </div>
            </div>
        </div>
    </div>
@endsection