@extends('index')

@section('title', 'Tạo câu hỏi mới')

@section('title1', 'Tạo câu hỏi mới')

@section('content')
    
    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="col-12">
                <form action="{{ route('admin.question.store') }}" method="POST">
                    @csrf
                    @method('POST')
                
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <th><label for="name">Câu hỏi:</label></th>
                                <td><input type="text" id="question" name="question" required></td>
                            </tr>
                            <tr>
                                <th><label for="a">Đáp án A:</label></th>
                                <td><input type="text" id="a" name="a" required></td>
                            </tr>
                            <tr>
                                <th><label for="b">Đáp án B:</label></th>
                                <td><input type="text" id="b" name="b" required></td>
                            </tr>
                            <tr>
                                <th><label for="c">Đáp án C:</label></th>
                                <td><input type="text" id="c" name="c" required></td>
                            </tr>
                            <tr>
                                <th><label for="d">Đáp án D:</label></th>
                                <td><input type="text" id="d" name="d" required></td>
                            </tr>
                            <tr>
                                <th><label for="correct_answer">Đáp án đúng:</label></th>
                                <td><select id="correct_answer" name="correct_answer" required>
                                    <option value=""></option>
                                    <option value="a">a</option>
                                    <option value="b">b</option>
                                    <option value="c">c</option>
                                    <option value="d">d</option>
                                </select></td>
                            </tr>
                            <tr>
                                <th><label for="level">Độ khó:</label></th>
                                <td><select id="level" name="level" required>
                                    <option value=""></option>
                                    <option value="Dề">Dễ</option>
                                    <option value="Trung bình">Trung bình</option>
                                    <option value="Khó">Khó</option>
                                </select></td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="submit" class="btn btn-success">Thêm</button>
                                    <a href="{{ route('admin.question.list') }}" class="btn btn-danger">Hủy</a>
                                </td>                                  
                            </tr>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection