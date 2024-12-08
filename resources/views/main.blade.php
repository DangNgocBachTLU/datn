<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title> @yield('title') </title>

    @include('header')
</head>

<body >
    @include('head')

    @yield('content')

    @include('footer')
</body>
</html>