{{--  <!-- Sidebar  -->  --}}
<nav id="sidebar">
    <div id="dismiss">
        <i class="fas fa-window-close m-2"></i>
    </div>

    <div class="sidebar-header">
        <a href="{{ route('home') }}">
            <img src="{{ asset('image/book-logo.png') }}" width="60" height="60" class="d-inline-block align-top" alt="" loading="lazy">
            <h5 class="mt-2">Sup-Perpus</h5>
        </a>
    </div>
    <ul class="list-unstyled components">
        <form class="d-md-none d-block px-3" action="{{ route('book.search') }}" method="POST">
            @csrf
            <div class="input-group mb-4">
                <input class="form-control search_input_sidebar" type="text" name="key" placeholder="Search Title" aria-label="Search" aria-describedby="button-addon">
                <div class="input-group-append">
                    <button class="btn btn-ligth search-sidebar" type="submit" id="button-addon"><i class="fa fa-search"></i></button>
                </div>
            </div>
        </form>
        <li class="{{ (strpos(Route::currentRouteName(), 'home') == 0) ? 'active' : '' }}">
            <a href="{{ route('home') }}">Home</a>
        </li>
        <li>
            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Categories</a>
            <ul class="collapse list-unstyled" id="pageSubmenu">
                @foreach ($categories as $category)
                    <li>
                        <a href="{{ route('category.index', $category) }}">{{ $category->name }}</a>
                    </li>
                @endforeach
            </ul>
        </li>
        @role('user')
            <li>
                <a href="{{ route('borrowed') }}">Borrowed Books</a>
            </li>
        @endrole
    </ul>

    <ul class="list-unstyled user-auth">
        @guest
            <li>
                <a href="{{ route('login') }}" class="auth">Login</a>
            </li>
            <li>
                <a href="{{ route('register') }}" class="auth">Register</a>
            </li>
        @else
            <li>
                <a href="{{ route('logout') }}" class="auth" onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">Logout</a>
            </li>
        @endguest
    </ul>
    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
        @csrf
    </form>
</nav>