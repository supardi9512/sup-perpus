<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" style="z-index: 1;">
    <div class="container-fluid">
        <button type="button" id="sidebarCollapse" class="btn btn-success">
            <i class="fas fa-align-justify"></i>
        </button>
        <a class="navbar-brand ml-md-5 mx-auto" href="{{ route('home') }}">
            <img src="{{ asset('image/book-logo.png') }}" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
            Sup-Perpus
        </a>
        <form action="{{ route('book.search') }}" method="POST" class="form-inline my-2 my-lg-0 ml-auto d-none d-md-inline-block">
            @csrf
            <div class="input-group">
                <input class="form-control d-inline-block m-100 search_input_navbar" type="text" name="key" placeholder="Search Title" aria-label="Search" aria-describedby="button-search-addon">
                <div class="input-group-append">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="button-search-addon"><i class="fa fa-search"></i></button>
                </div>
            </div>
        </form>
        @guest
        @else
            <button class="btn btn-success ml-md-5" style="cursor: default !important;">
                <i class="fa fa-user"></i> {{ auth()->user()->name }}
            </button>
        @endguest
    </div>
</nav>