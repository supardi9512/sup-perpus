<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\BorrowHistory;
use App\Book;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BorrowController extends Controller
{
    public function index()
    {
        return view('admin.borrow.index', [
            'title' => 'Data Buku Yang Dipinjam',
        ]);
    }

    public function returnBook(Request $request, BorrowHistory $borrowHistory)
    {
        $borrowHistory->update([
            'returned_at' => Carbon::now(),
            'admin_id' => auth()->id(),
        ]);

        $book = Book::find($borrowHistory->book_id);
        $book->qty = $book->qty + 1;
        $book->save();

        return redirect()->back()->withSuccess('Buku dikembalikan.');
    }
}
