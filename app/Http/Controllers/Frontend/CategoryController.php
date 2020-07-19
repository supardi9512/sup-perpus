<?php

namespace App\Http\Controllers\Frontend;

use App\Category;
use App\Book;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index(Category $category)
    {
        $categories = Category::all();
        $books = Book::where('category_id', $category->id)->paginate(12);

        return view('frontend.category.index', [
            'title' => $category->name.' | Sup-Perpus',
            'categories' => $categories,
            'category_name' => $category->name,
            'books' => $books,
        ]);
    }
}
