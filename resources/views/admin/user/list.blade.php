@extends('index')

@section('title', 'Danh sách người dùng')

@section('title1', 'Danh sách người dùng')

@section('content')
    
    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="col-12">
                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <th>Tên</th>
                            <th>Giới tính</th>
                            <th>Địa chỉ</th>
                            <th>Số điện thoại</th>
                            <th>Email</th>
                        </tr>
                        @foreach($user as $item)
                            <tr>
                                <td>{{$item->name}}</td>
                                <td>{{$item->gender}}</td>
                                <td>{{$item->address}}</td>
                                <td>{{$item->phone}}</td>
                                <td>{{$item->email}}</td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>

@endsection