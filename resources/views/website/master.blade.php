<!DOCTYPE html>
<html lang="zxx">

<head>
    @include('website.includes.style')

    <title>@yield('title') | Ogani Choose Your Needs</title>
</head>

<body>
    @include('website.includes.header')

    <main id="mainBody">
        @yield('body')
    </main>

    @include('website.includes.footer')

    @include('website.includes.script')


</body>

</html>
