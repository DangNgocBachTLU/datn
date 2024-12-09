<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title> @yield('title') </title>

    @include('header')
    
</head>

<body >
    <div id="wrapper" class="d-flex">
        <nav class="navbar flex-column custom-sidebar p-3">
            <ul class="nav flex-column" id="side-menu">
                
                <li class="nav-item">
                    <a class="nav-link text-center" href="{{ route('admin.dashboard') }}">
                        <img src="{{ asset('images/img_admin.svg') }}" alt="" class="img-fluid img-thumbnail">
                        <span class="nav-label d-block mt-2">Admin</span>
                    </a>
                </li>                

                <li class="nav-item">
                    <a class="nav-link text-white" href="{{ route('admin.user.list') }}" data-bs-target="#submenu-user-management" aria-expanded="false">
                        <i class="fa-solid fa-user me-2"></i>
                        <span class="nav-label">Danh sách người dùng</span>
                    </a>
                </li>
        
                
                <li class="nav-item">
                    <a class="nav-link text-white" href="#" data-bs-toggle="collapse" data-bs-target="#submenu-exam-management" aria-expanded="false">
                        <i class="fa fa-th-large me-2"></i>
                        <span class="nav-label">Quản lý đề thi</span>
                    </a>
                    <ul class="collapse list-unstyled ps-3" id="submenu-exam-management">
                        <li class="nav-item"><a class="nav-link text-white" href="{{ route('admin.question.list') }}">Danh sách câu hỏi</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="{{ route('admin.test.list') }}">Danh sách đề thi</a></li>
                    </ul>
                </li>
            </ul>
        </nav>        
    
        
        <div id="page-wrapper" class="flex-grow-1">
            <div class="border-bottom">
                <nav class="navbar navbar-expand-lg navbar-light bg-white px-4">
                    <a class="navbar-brand ms-auto" href="{{ route('admin.index') }}"><i class="fa-solid fa-right-from-bracket"></i>Log out</a>
                </nav>
            </div>
    
            <div class="container mt-4">
                <h1 class="text-center">@yield('title1')</h1>
                @yield('content')
            </div>
        </div>
    </div>    

    @include('footer')
</body>
</html>