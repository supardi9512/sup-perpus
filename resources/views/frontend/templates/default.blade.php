<!DOCTYPE html>
<html lang="en">
@include('frontend.templates.partials.head')
<body>
    <div class="wrapper">
        {{--  Navigation  --}}
        @include('frontend.templates.partials.sidebar')

        {{--  Content  --}}
        <div id="content">
            @include('frontend.templates.partials.navbar')
            @yield('content')
            <footer class="footer">
                <p>&copy; 2020 Sup-Perpus</p>
            </footer>
        </div>
        @include('frontend.templates.partials.toast')
    </div>
    <div class="overlay"></div>
    @include('frontend.templates.partials.scripts')
</body>
</html>