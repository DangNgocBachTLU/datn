@extends('main')

@section('title', 'Trang thông tin cá nhân')

@section('content')
    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="col-12">
                <div class="card-header">
                    <h2>Thông tin cá nhân</h2>
                </div>
                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <th>Tên</th>
                            <td>{{$user->name}}</td>
                        </tr>
                        <tr>
                            <th>Số điện thoại</th>
                            <td>{{$user->phone}}</td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td>{{$user->email}}</td>
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td>{{$user->address}}</td>
                        </tr>
                        <tr>
                            <th>Giới tính</th>
                            <td>{{$user->gender}}</td>
                        </tr>
                        <tr>
                            <th></th>
                            <td>
                                <a href="{{ route('account.edit', $user->id) }}" class="btn btn-success">chỉnh sửa thông tin</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection