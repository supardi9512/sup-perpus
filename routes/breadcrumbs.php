<?php

// Home
Breadcrumbs::for('admin.dashboard', function ($trail) {
    $trail->push('Beranda', route('admin.dashboard'));
});

// Category Index
Breadcrumbs::for('admin.category.index', function ($trail) {
    $trail->push('Beranda', route('admin.dashboard'));
    $trail->push('Kategori', route('admin.category.index'));
});

// Category Tambah
Breadcrumbs::for('admin.category.create', function ($trail) {
    $trail->push('Beranda', route('admin.dashboard'));
    $trail->push('Kategori', route('admin.category.index'));
    $trail->push('Tambah Kategori', route('admin.category.create'));
});

// Category Edit
Breadcrumbs::for('admin.category.edit', function ($trail, $category) {
    $trail->push('Beranda', route('admin.dashboard'));
    $trail->push('Kategori', route('admin.category.index'));
    $trail->push('Edit Kategori', route('admin.category.edit', $category));
});

// Book Index
Breadcrumbs::for('admin.book.index', function ($trail) {
    $trail->push('Beranda', route('admin.dashboard'));
    $trail->push('Buku', route('admin.book.index'));
});

// Book Tambah
Breadcrumbs::for('admin.book.create', function ($trail) {
    $trail->push('Beranda', route('admin.dashboard'));
    $trail->push('Buku', route('admin.book.index'));
    $trail->push('Tambah Buku', route('admin.book.create'));
});

// Book Edit
Breadcrumbs::for('admin.book.edit', function ($trail, $book) {
    $trail->push('Beranda', route('admin.dashboard'));
    $trail->push('Buku', route('admin.book.index'));
    $trail->push('Edit Buku', route('admin.book.edit', $book));
});

// Borrow Index
Breadcrumbs::for('admin.borrow.index', function ($trail) {
    $trail->push('Beranda', route('admin.dashboard'));
    $trail->push('Peminjaman', route('admin.borrow.index'));
});

// User Index
Breadcrumbs::for('admin.user.index', function ($trail) {
    $trail->push('Beranda', route('admin.dashboard'));
    $trail->push('User', route('admin.user.index'));
});

// User Tambah
Breadcrumbs::for('admin.user.create', function ($trail) {
    $trail->push('Beranda', route('admin.dashboard'));
    $trail->push('User', route('admin.user.index'));
    $trail->push('Tambah User', route('admin.user.create'));
});

// User Edit
Breadcrumbs::for('admin.user.edit', function ($trail, $user) {
    $trail->push('Beranda', route('admin.dashboard'));
    $trail->push('User', route('admin.user.index'));
    $trail->push('Edit User', route('admin.user.edit', $user));
});