<?php

namespace App\Http\Controllers\Frontend;

use App\Book;
use App\Category;
use App\BorrowHistory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BookController extends Controller
{
    public function index()
    {
        $categories = Category::all();
        $books = Book::paginate(12);

        return view('frontend.book.index', [
            'title' => 'Sup-Perpus',
            'categories' => $categories,
            'books' => $books,
        ]);
    }

    public function show(Book $book)
    {
        $categories = Category::all();

        return view('frontend.book.show', [
            'title' => $book->title.' | Sup-Perpus',
            'categories' => $categories,
            'book' => $book,
        ]);
    }

    public function borrow(Request $request, Book $book)
    {
        $user = $request->user();

        if($user->borrow()->isStillBorrow($book->id)) {
            return redirect()->back()->with('toast', 'Anda sudah meminjam buku dengan judul : "'.$book->title.'"');
        }

        $user->borrow()->attach($book);
        $book->qty = $book->qty - 1;
        $book->save();

        return redirect()->back()->with('toast', 'Anda berhasil meminjam buku.');
    }

    public function borrowed()
    {
        $categories = Category::all();
        $books = auth()->user()->borrow;

        return view('frontend.book.borrowed', [
            'title' => 'Borrowed Books | Sup-Perpus',
            'categories' => $categories,
            'books' => $books,
        ]);
    }

    public function search(Request $request)
    {
        $categories = Category::all();
        $books = Book::where('title', 'like', '%'.$request->key.'%')->paginate(12);

        return view('frontend.book.search', [
            'title' => 'Search | Sup-Perpus',
            'categories' => $categories,
            'books' => $books,
            'keyword' => $request->key
        ]);
    }
}
