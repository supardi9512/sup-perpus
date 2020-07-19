<div class="col-sm-12 col-md-6 col-lg-3 mb-5">
    <div class="card mx-auto item_product">
        <div class="card-img-top">
            <div class="embed-responsive embed-responsive-4by3" style="height: 400px;">
                <div class="embed-responsive-item">
                    <a href="{{ route('book.show', $book) }}">
                        <img src="{{ $book->getCover() }}" class="img-fluid h-100 w-100 img-responsive">
                    </a>
                </div>
            </div>
        </div>
        <div class="card-body" style="height: 200px">
            <div>
                <a href="{{ route('book.show', $book) }}">
                    <h5 class="card-title">{{ Str::limit($book->title, 25) }}</h5>
                </a>
            </div>
            <div>
                <p><small>{{ Str::limit($book->description, 90) }}</small></p>
            </div>
        </div>
        <div class="card-footer clearfix">
            <form action="{{ route('book.borrow', $book) }}" method="post" class="m-0">
                @csrf
                <div class="form-group m-0">
                    <button type="submit" class="btn btn-block btn-success button_block_success">Borrow This Book</button>
                </div>
            </form>
        </div>
    </div>
</div>