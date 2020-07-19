@extends('frontend.templates.default')

@section('content')
    <div class="container" style="margin-top: 100px;">
        <div class="row align-middle">
            <div class="col-sm-12 col-md-6 order-2 order-md-1">
                <h3 class="title-page">Search: "{{ $keyword }}"</h3>
            </div>
            <div class="col-sm-12 col-md-6 order-1 order-md-2">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb float-right p-0 button_breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}"><i class="fa fa-home"></i> Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Search</li>
                    </ol>
                </nav>
            </div>
        </div>
        <hr class="mb-5">
        <div class="row section_content">
            @forelse ($books as $book)
                @include('frontend.templates.components.card-book', ['book' => $book])
            @empty
                <div class="col-sm-12 mb-5">
                    <div class="card mx-auto item_product">
                        <div class="card-body">
                            <h6 class="m-0">Book not found!</h6>
                        </div>
                    </div>
                </div>
            @endforelse
        </div>
    </div>
    {{--  Pagination  --}}
    {{ $books->links('vendor.pagination.bootstrap-4') }}
@endsection