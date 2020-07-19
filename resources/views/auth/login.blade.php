@extends('auth.templates.default-auth')

@section('content')
    <div class="container" style="margin-top: 100px;">
        <div class="row align-middle">
            <div class="col-sm-12">
                <h3 class="title-page">{{ __('Login') }}</h3>
            </div>
        </div>
        <hr class="mb-5">
        <div class="row section_content">
            <div class="col-sm-12 mb-5">
                <div class="card mx-auto contact_card">
                    <div class="card-body">
                        <form method="POST" action="{{ route('login') }}">
                            @csrf
                            <div class="form-group">
                                <input type="email" name="email" class="form-control contact_input @error('email') is-invalid @enderror" placeholder="Email" id="email" required autocomplete="off" autofocus value="{{ old('email') }}">
                                <label for="email" class="contact_label">{{ __('Email') }}</label>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" class="form-control contact_input @error('password') is-invalid @enderror" placeholder="Password" id="password" required autocomplete="off" value="{{ old('password') }}">
                                <label for="password" class="contact_label">{{ __('Password') }}</label>
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-block btn-success button_success_block">{{ __('Login') }}</button>
                                @if (Route::has('password.request'))
                                    <a class="btn btn-block btn-success button_success_block" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection