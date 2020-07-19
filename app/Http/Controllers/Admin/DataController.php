<?php

namespace App\Http\Controllers\Admin;

use App\Book;
use App\User;
use App\Category;
use App\BorrowHistory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DataController extends Controller
{
    public function categories()
    {
        $categories = Category::orderBy('id', 'DESC');

        return datatables()->of($categories)
            ->addColumn('action', 'admin.category.action')
            ->addIndexColumn()
            ->rawColumns(['action'])
            ->toJson();
    }

    public function books()
    {
        $books = Book::orderBy('id', 'DESC')->get();
        $books->load('category'); // menangani masalah n+1

        return datatables()->of($books)
            ->addColumn('category', function(Book $model) {
                return $model->category->name;
            })
            ->editColumn('cover', function(Book $model) {
                return '<img src="'.$model->getCover().'" height="150px">';
            })
            ->addColumn('action', 'admin.book.action')
            ->addIndexColumn()
            ->rawColumns(['cover', 'action'])
            ->toJson();
    }

    public function borrows()
    {
        $borrows = BorrowHistory::isBorrowed()->latest()->get();
        $borrows->load('user', 'book'); // menangani masalah n+1

        return datatables()->of($borrows)
            ->addColumn('user', function(BorrowHistory $model) {
                return $model->user->name;
            })
            ->addColumn('book_title', function(BorrowHistory $model) {
                return $model->book->title;
            })
            ->addColumn('action', 'admin.borrow.action')
            ->addIndexColumn()
            ->rawColumns(['action'])
            ->toJson();
    }

    public function users()
    {
        $users = User::with('roles')->orderBy('id', 'DESC');

        return datatables()->of($users)
            ->addColumn('action', 'admin.user.action')
            ->addIndexColumn()
            ->rawColumns(['action'])
            ->toJson();
    }
}
