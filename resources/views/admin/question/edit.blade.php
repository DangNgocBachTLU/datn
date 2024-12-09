@extends('index')

@section('title', 'Chỉnh sửa câu hỏi')

@section('title1', 'Chỉnh sửa câu hỏi')

@section('content')

    <div  class="container">
        <div class="row" style="margin: 20px;">
            <div class="col-12">
                <form action="{{ route('admin.question.update', $question->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <th><label for="name">Câu hỏi:</label></th>
                                <td><input type="text" id="question" name="question" value="{{ $question->question }}" required></td>
                            </tr>
                            <tr>
                                <th><label for="a">Đáp án A:</label></th>
                                <td><input type="text" id="a" name="a" value="{{ $question->a }}" required></td>
                            </tr>
                            <tr>
                                <th><label for="b">Đáp án B:</label></th>
                                <td><input type="text" id="b" name="b" value="{{ $question->b }}" required></td>
                            </tr>
                            <tr>
                                <th><label for="c">Đáp án C:</label></th>
                                <td><input type="text" id="c" name="c" value="{{ $question->c }}" required></td>
                            </tr>
                            <tr>
                                <th><label for="d">Đáp án D:</label></th>
                                <td><input type="text" id="d" name="d" value="{{ $question->d }}" required></td>
                            </tr>
                            <tr>
                                <th><label for="correct_answer">Đáp án đúng:</label></th>
                                <td><select id="correct_answer" name="correct_answer" required>
                                    <option value=""></option>
                                    <option value="a" {{ $question->correct_answer == 'a' ? 'selected' : '' }}>a</option>
                                    <option value="b" {{ $question->correct_answer == 'b' ? 'selected' : '' }}>b</option>
                                    <option value="c" {{ $question->correct_answer == 'c' ? 'selected' : '' }}>c</option>
                                    <option value="d" {{ $question->correct_answer == 'd' ? 'selected' : '' }}>d</option>
                                </select></td>
                            </tr>
                            <tr>
                                <th><label for="level">Độ khó:</label></th>
                                <td><select id="level" name="level" required>
                                    <option value=""></option>
                                    <option value="Dề" {{ $question->level == 'Dễ' ? 'selected' : '' }}>Dễ</option>
                                    <option value="Trung bình" {{ $question->level == 'Trung bình' ? 'selected' : '' }}>Trung bình</option>
                                    <option value="Khó" {{ $question->level == 'Khó' ? 'selected' : '' }}>Khó</option>
                                </select></td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="submit" class="btn btn-success">Cập nhật</button>
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