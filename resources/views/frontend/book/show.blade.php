@extends('frontend.templates.default')

@section('content')
    <div class="container" style="margin-top: 100px;">
        {{--  BOOK DETAILS  --}}
        <div class="row align-middle">
            <div class="col-sm-12 col-md-6 order-2 order-md-1">
                <h3 class="title-page">Book Details</h3>
            </div>
            <div class="col-sm-12 col-md-6 order-1 order-md-2">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb float-right p-0 button_breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}"><i class="fa fa-home"></i> Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Book Details</li>
                    </ol>
                </nav>
            </div>
        </div>
        <hr class="mb-5">
        <div class="row section_content mb-5">
            <div class="col-sm-12 mb-5">
                <div class="card mx-auto item_product">
                    <div class="row">
                        <div class="col-12 col-md-3">
                            <div class="card-img-top">
                                <div class="embed-responsive embed-responsive-4by3" style="height: 400px;">
                                    <div class="embed-responsive-item">
                                        <img src="{{ $book->getCover() }}" class="img-fluid h-100 w-100 img-responsive">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-9">
                            <div class="card-body">
                                <h5 class="card-title">{{ $book->title }}</h5>
                                <p>{{ $book->description }}</p>
                                <div class="mb-5">
                                    <p>
                                        <i class="fa fa-tag"></i> : {{ $book->category->name }}
                                    </p>
                                    <p>
                                        <i class="fa fa-book"></i> : {{ $book->qty }}
                                    </p>
                                </div>
                                <div class="clearfix mb-auto">
                                    <form action="{{ route('book.borrow', $book) }}" method="post">
                                        @csrf
                                        <button type="submit" class="btn btn-block btn-success button_block_success">Borrow Now</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row align-middle">
            <div class="col-sm-12">
                <h4 class="title-page">Similar Books</h4>
            </div>
        </div>
        <hr class="mb-5">
        <div class="row section_content">
            @foreach ($book->category->books->shuffle()->take(4) as $book)
                @include('frontend.templates.components.card-book', ['book' => $book])
            @endforeach
        </div>
    </div>
@endsection