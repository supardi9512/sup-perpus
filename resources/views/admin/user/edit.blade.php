@extends('admin.templates.default')

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Edit Data User</h3>
        </div>
        <div class="box-body">
            <form action="{{ route('admin.user.update', $user) }}" method="POST">
                @csrf
                @method("PUT")

                <div class="form-group @error('name') has-error @enderror">
                    <label for="">Nama</label>
                    <input type="text" name="name" class="form-control" placeholder="Masukkan nama user"
                        value="{{ old('name') ?? $user->name }}">
                    @error('name')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group @error('email') has-error @enderror">
                    <label for="">Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Masukkan email user" value="{{ old('email') ?? $user->email }}">
                    @error('email')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group @error('password') has-error @enderror">
                    <label for="">Password</label>
                    <small>(Kosongkan jika tidak ingin diubah)</small>
                    <input type="password" name="password" class="form-control" placeholder="Masukkan password user">
                    @error('password')
                        <span class="help-block">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group @error('role') has-error @enderror">
                    <label for="">Role</label>
                    <select name="role" id="" class="form-control select2">
                        <option value="">Pilih Role</option>
                        <option value="admin" 
                            @isset($user->getRoleNames()[0])
                                @if ($user->getRoleNames()[0] === "admin")
                                    selected                                
                                @endif
                            @endisset >
                            Admin
                        </option>
                        <option value="user" 
                            @isset($user->getRoleNames()[0])
                                @if ($user->getRoleNames()[0] === "user")
                                    selected                                
                                @endif
                            @endisset >
                            User
                        </option>
                    </select>
                    @error('role')
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