@extends('index')

@section('title', 'Tạo đề thi mới')

@section('title1', 'Tạo đề thi mới')

@section('content')
    
    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="col-12">
                <form action="{{ route('admin.test.store') }}" method="POST">
                    @csrf
                    @method('POST')
                
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <th><label for="name">Tên đề thi:</label></th>
                                <td><input type="text" id="name" name="name"></td>
                            </tr>
                            <tr>
                                <th><label for="level">Độ khó:</label></th>
                                <td><select id="level" name="level" required>
                                    <option value=""></option>
                                    <option value="Dễ">Dễ</option>
                                    <option value="Trung bình">Trung bình</option>
                                    <option value="Khó">Khó</option>
                                </select></td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="submit" class="btn btn-success">Thêm</button>
                                    <a href="{{ route('admin.test.list') }}" class="btn btn-danger">Hủy</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection