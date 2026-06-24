<!doctype html>
<html lang="en" dir="ltr">

<head>
    @include('admin.includes.style')
    <title>Dashboard | @yield('title')</title>
</head>

<body class="ltr app sidebar-mini">

    <!-- GLOBAL-LOADER -->
    <div id="global-loader">
        <img src="{{ asset('/') }}admin/assets/images/loader.svg" class="loader-img" alt="Loader">
    </div>

    <div class="page">

        @include('admin.includes.sidebar')
        
        @include('admin.includes.footer')

    </div>

    @include('admin.includes.script')
</body>

</html>
