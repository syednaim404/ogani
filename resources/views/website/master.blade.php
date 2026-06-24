<!DOCTYPE html>
<html lang="zxx">

<head>
    @include('website.includes.style')
    
    <title>@yield('title') | Ogani Choose Your Needs</title>
</head>

<body>
    @include('website.includes.header')

    @yield('body')

    @include('website.includes.footer')

    @include('website.includes.script')
</body>

</html>
