<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
    
            <a class="navbar-brand" href="{{ route('user.homepage.index') }}">Trang chủ</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
    
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
                <form class="d-flex" role="search" method="GET" action="{{ route('user.test.search') }}">
                    <input class="form-control me-2" type="search" name="search" placeholder="Tìm kiếm" aria-label="Search" value="{{ request('search') }}">
                    <button class="btn btn-outline-success w-50" type="submit">Tìm kiếm</button>
                </form>
    
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0 me-4">
                    <li class="nav-item">
                        <a class="nav-link active" style="margin-right: 10px" aria-current="test" href="{{ route('user.test.list') }}">Đề thi</a>
                    </li>
    
                    @if(Auth::check())
                        <li class="nav-item dropdown custom-dropdown">
                            <a class="nav-link" href="#">Xin chào, {{ Auth::user()->name }}!</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item personal-information" href="{{ route('user.account.profile') }}">Thông tin cá nhân</a></li>
                                <li><a class="dropdown-item test-history" href="{{ route('user.test.history') }}">Lịch sử làm bài</a></li>
                                <li>
                                    <form action="{{ route('user.auth.logout') }}" method="POST">
                                        @csrf
                                        <button type="submit" class="dropdown-item log-out text-danger">Đăng xuất</button>
                                    </form>
                                </li>
                            </ul>
                        </li>
                    @else
                        <a class="btn btn-success" href=" {{ route('user.auth.loginform') }} ">Đăng nhập</a>
                    @endif
                </ul>
            </div>
        </div>
    </nav>
</header>