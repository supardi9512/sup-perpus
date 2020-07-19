<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" style="z-index: 1;">
    <div class="container-fluid">
        <a class="navbar-brand ml-md-5" href="{{ route('home') }}" style="margin: auto !important">
            <img src="{{ asset('image/book-logo.png') }}" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
            Sup-Perpus
        </a>
        @guest
        @else
            <button class="btn btn-success ml-md-5" style="cursor: default !important;">
                <i class="fa fa-user"></i> {{ auth()->user()->name }}
            </button>
        @endguest
    </div>
</nav>