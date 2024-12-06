<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Đăng ký</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="backend/css/customize.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <h3>Đăng ký tài khoản</h3>
            <p>Đăng ký ngay để bắt đầu trải nghiệm luyện thi tiếng Anh hiệu quả mỗi ngày.</p>
            <form method='post' class="m-t" role="form" action=" {{ route('auth.register') }} " novalidate>
                @csrf

                <div class="form-group">
                    <input type="text"
                     name="name"
                     class="form-control"
                     placeholder="Tên"
                     value="{{ old('name') }}">
                    @if ($errors->has('name'))
                        <span class="error-message">* {{ $errors->first('name') }} </span>
                    @endif
                </div>

                <div class="form-group">
                    <input type="email"
                     name="email"
                     class="form-control"
                     placeholder="Email"
                     value=" {{ old('email') }} ">
                    @if ($errors->has('email'))
                        <span class="error-message">* {{ $errors->first('email') }} </span>
                    @endif
                </div>

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
                        <span class="error-message">* {{ $errors->first('password') }} </span>
                    @endif
                </div>
                <div class="form-group">
                        <div class="checkbox i-checks">
                            <label><input type="checkbox" name="terms" {{ old('terms') ? 'checked' : '' }} ><i></i> Đồng ý với các điều khoản và chính sách </label>
                        </div>
                        @if ($errors->has('terms'))
                            <span class="error-message">* {{ $errors->first('terms') }}</span>
                        @endif
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Đăng ký</button>

                <p class="text-muted text-center"><small>Đã có tài khoản?</small></p>
                <a class="btn btn-sm btn-white btn-block" href=" {{ route('auth.loginform')}} ">Đăng nhập</a>
            </form>
        </div>
    </div>

    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="backend/js/i-check.js"></script>
</body>

</html>
