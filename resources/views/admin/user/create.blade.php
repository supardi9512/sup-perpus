@extends('admin.templates.default')

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Tambah Data User</h3>
        </div>
        <div class="box-body">
            <form action="{{ route('admin.user.store') }}" method="POST">
                @csrf

                <div class="form-group @error('name') has-error @enderror">
                    <label for="">Nama</label>
                    <input type="text" name="name" class="form-control" placeholder="Masukkan nama user" value="{{ old('name') }}">
                    @error('name')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group @error('email') has-error @enderror">
                    <label for="">Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Masukkan email user" value="{{ old('email') }}">
                    @error('email')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group @error('password') has-error @enderror">
                    <label for="">Password</label>
                    <input type="password" name="password" class="form-control" placeholder="Masukkan password user">
                    @error('password')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group @error('role') has-error @enderror">
                    <label for="">Role</label>
                    <select name="role" id="" class="form-control select2">
                        <option value="">Pilih Role</option>
                        <option value="admin">Admin</option>
                        <option value="user">User</option>
                    </select>
                    @error('role')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>

                <div class="form-group">
                    <input type="submit" value="Tambah" class="btn btn-success">
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