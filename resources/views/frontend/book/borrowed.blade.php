@extends('frontend.templates.default')

@section('content')
    <div class="container" style="margin-top: 100px;">
        <div class="row align-middle">
            <div class="col-sm-12 col-md-6 order-2 order-md-1">
                <h3 class="title-page">Borrowed Books</h3>
            </div>
            <div class="col-sm-12 col-md-6 order-1 order-md-2">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb float-right p-0 button_breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}"><i class="fa fa-home"></i> Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Borrowed Books</li>
                    </ol>
                </nav>
            </div>
        </div>
        <hr class="mb-5">
        @forelse ($books as $book)
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
                                        <p class="float-left">
                                            <i class="fa fa-user"></i> : {{ $book->category->name }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @empty
            <div class="row section_content mb-5">
                <div class="col-sm-12 mb-5">
                    <div class="card mx-auto item_product">
                        <div class="card-body">
                            <h6 class="m-0">You haven't borrowed a book.</h6>
                        </div>
                    </div>
                </div>
            </div>
        @endforelse
    </div>
@endsection