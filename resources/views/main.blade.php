<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title> @yield('title') </title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="backend/css/customize.css" rel="stylesheet">

</head>

<body >
    @include('header')

    @yield('content')

    @include('footer')
</body>
</html>