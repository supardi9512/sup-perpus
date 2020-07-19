{{--  <!-- Left side column. contains the logo and sidebar -->  --}}
<aside class="main-sidebar">
    {{--  <!-- sidebar: style can be found in sidebar.less -->  --}}
    <section class="sidebar">
      {{--  <!-- sidebar menu: : style can be found in sidebar.less -->  --}}
      <ul class="sidebar-menu" data-widget="tree">
        <li class="{{ request()->routeIs('admin.dashboard') ? 'active' : '' }}"><a href="{{ route('admin.dashboard') }}"><i class="fa fa-home"></i> <span>Beranda</span></a></li>
        <li class="{{ request()->routeIs('admin.category.index') ? 'active' : '' }}"><a href="{{ route('admin.category.index') }}"><i class="fa fa-tag"></i> <span>Kategori</span></a></li>
        <li class="{{ request()->routeIs('admin.book.index') ? 'active' : '' }}"><a href="{{ route('admin.book.index') }}"><i class="fa fa-book"></i> <span>Buku</span></a></li>
        <li class="{{ request()->routeIs('admin.borrow.index') ? 'active' : '' }}"><a href="{{ route('admin.borrow.index') }}"><i class="fa fa-book"></i> <span>Buku Sedang Dipinjam</span></a></li>
        <li class="{{ request()->routeIs('admin.user.index') ? 'active' : '' }}"><a href="{{ route('admin.user.index') }}"><i class="fa fa-users"></i> <span>User</span></a></li>
      </ul>
    </section>
    {{--  <!-- /.sidebar -->  --}}
</aside>