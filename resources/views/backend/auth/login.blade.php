<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Đăng nhập</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="backend/css/customize.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <h3>Xin chào</h3>
            <p>Đăng nhập ngay để bắt đầu trải nghiệm luyện thi tiếng Anh hiệu quả mỗi ngày.</p>
            <form method="post" class="m-t" role="form" action=" {{ route('auth.login') }} ">
                @csrf

                <div class="form-group">
                    <input type="text"
                     name="username"
                     class="form-control"
                     placeholder="Tài khoản"
                     value="{{ old('username') }}">                         
                    @if ($errors->has('username'))
                        <span class="error-message">* {{ $errors->first('username') }} </span>
                    @endif
                </div>

                <div class="form-group">
                    <input type="password"
                     name="password"
                     class="form-control"
                     placeholder="Mật khẩu">
                    @if ($errors->has('password'))
                        <span class="error-message"> * {{ $errors->first('password') }} </span>
                    @endif
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Đăng nhập</button>

                <a href="#"><small>Quên mật khẩu?</small></a>
                <p class="text-muted text-center"><small>Bạn chưa có tài khoản?</small></p>
                <a class="btn btn-sm btn-white btn-block" href=" {{ route('auth.registerform') }} ">Đăng ký ngay</a>
            </form>
        </div>
    </div>

    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>

</html>