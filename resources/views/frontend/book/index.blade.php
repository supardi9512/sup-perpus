@extends('frontend.templates.default')

@section('content')
    <div class="container" style="margin-top: 100px;">
        <div class="row align-middle">
            <div class="col-sm-12">
                <h3 class="title-page">All Books</h3>
            </div>
        </div>
        <hr class="mb-5">
        <div class="row section_content">
            @foreach ($books as $book)
                @include('frontend.templates.components.card-book', ['book' => $book])
            @endforeach
        </div>
    </div>
    {{--  Pagination  --}}
    {{ $books->links('vendor.pagination.bootstrap-4') }}
@endsection