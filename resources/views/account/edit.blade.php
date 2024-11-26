@extends('main')

@section('title', 'Chỉnh sửa thông tin')

@section('content')
<div  class="container">
    <div class="row" style="margin: 20px;">
        <div class="col-12">
            <div class="card-header">
                <h2>Chỉnh sửa thông tin</h2>
            </div>
            <form action="{{ route('account.update') }}" method="POST">
                @csrf
                @method('PUT')
            
                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <th><label for="name">Tên:</label></th>
                            <td><input type="text" id="name" name="name" value="{{ $user->name }}" required></td>
                        </tr>
                        <tr>
                            <th><label for="phone">Số điện thoại:</label></th>
                            <td><input type="text" id="phone" name="phone" value="{{ $user->phone }}" required></td>
                        </tr>
                        <tr>
                            <th><label for="email">Email*:</label></th>
                            <td><input type="text" id="email" name="email" value="{{ $user->email }}" readonly></td>
                        </tr>
                        <tr>
                            <th><label for="address">Địa chỉ:</label></th>
                            <td><input type="text" id="address" name="address" value="{{ $user->address }}"></td>
                        </tr>
                        <tr>
                            <th><label for="gender">Giới tính:</label></th>
                            <td><select id="gender" name="gender">
                                <option value=""></option>
                                <option value="Nam" {{ $user->gender == 'Nam' ? 'selected' : '' }}>Nam</option>
                                <option value="Nữ" {{ $user->gender == 'Nữ' ? 'selected' : '' }}>Nữ</option>
                                <option value="Khác" {{ $user->gender == 'Khác' ? 'selected' : '' }}>Khác</option>
                            </select></td>
                        </tr>
                        <tr>
                            <th><label for="username">Tài khoản*:</label></th>
                            <td><input type="text" id="username" name="username" value="{{ $user->username }}" readonly></td>
                        </tr>
                        <tr>
                            <td><label style="font-size: xx-small">(*):Không thể thay đổi thông tin</label></td>
                            <td>
                                <button type="submit" class="btn btn-success">Cập nhật</button>
                                <a href="{{ route('account.profile') }}" class="btn btn-danger">Hủy</a>
                            </td>                                  
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection