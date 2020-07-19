<!DOCTYPE html>
<html lang="en">
@include('frontend.templates.partials.head')
<body>
    <div class="wrapper">
        {{--  Content  --}}
        <div id="content">
            @include('auth.templates.partials.navbar-auth')
            @yield('content')
            <footer class="footer">
                <p>&copy; 2020 Sup-Perpus</p>
            </footer>
        </div>
        @include('frontend.templates.partials.toast')
    </div>
    @include('frontend.templates.partials.scripts')
</body>
</html>