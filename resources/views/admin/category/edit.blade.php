@extends('admin.templates.default')

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Edit Data Kategori</h3>
        </div>
        <div class="box-body">
            <form action="{{ route('admin.category.update', $category) }}" method="POST">
                @csrf
                @method("PUT")

                <div class="form-group @error('name') has-error @enderror">
                    <label for="">Nama</label>
                    <input type="text" name="name" class="form-control" placeholder="Masukkan nama kategori"
                        value="{{ old('name') ?? $category->name }}">
                    @error('name')
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