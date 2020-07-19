@extends('admin.templates.default')

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Edit Data Buku</h3>
        </div>
        <div class="box-body">
            <form action="{{ route('admin.book.update', $book) }}" method="post" enctype="multipart/form-data">
                @csrf
                @method("PUT")

                <div class="form-group @error('title') has-error @enderror">
                    <label for="">Judul</label>
                    <input type="text" name="title" class="form-control" placeholder="Masukkan judul buku" value="{{ $book->title ?? old('title') }}">
                    @error('title')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>

                <div class="form-group @error('description') has-error @enderror">
                    <label for="">Deskripsi</label>
                    <textarea name="description" id="" rows="3" class="form-control" placeholder="Masukkan deskripsi buku">{{ $book->description ?? old('description') }}</textarea>
                    @error('description')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>

                <div class="form-group @error('category_id') has-error @enderror">
                    <label for="">Kategori</label>
                    <select name="category_id" id="" class="form-control select2">
                        <option value="">Pilih Kategori</option>
                        @foreach ($categories as $category)
                            <option value="{{ $category->id }}" @if ($category->id === $book->category_id)
                                selected                                
                            @endif>
                                {{ $category->name }}
                            </option>
                        @endforeach
                    </select>
                    @error('category_id')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>

                <div class="form-group @error('cover') has-error @enderror">
                    <label for="">Sampul</label>
                    <input type="file" name="cover" class="form-control">
                    @error('cover')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>

                <div class="form-group @error('qty') has-error @enderror">
                    <label for="">Jumlah</label>
                    <input type="number" name="qty" class="form-control" placeholder="Masukkan jumlah buku" value="{{ $book->qty ?? old('qty') }}">
                    @error('qty')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>

                <div class="form-group">
                    <input type="submit" value="Ubah" class="btn btn-success">
                </div>
            </form>
        </div>
    </div>
@endsection

@push('select2css')
    <link rel="stylesheet" href="{{ asset('assets/bower_components/select2/dist/css/select2.min.css') }}">
@endpush

@push('scripts')
    <script src="{{ asset('assets/bower_components/select2/dist/js/select2.full.min.js') }}"></script>
    <script>
        $('.select2').select2();
    </script>
@endpush