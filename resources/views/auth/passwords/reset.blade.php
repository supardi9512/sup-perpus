@extends('auth.templates.default-auth')

@section('content')
    <div class="container" style="margin-top: 100px;">
        <div class="row align-middle">
            <div class="col-sm-12">
                <h3 class="title-page">{{ __('Reset Password') }}</h3>
            </div>
        </div>
        <hr class="mb-5">
        <div class="row section_content">
            <div class="col-sm-12 mb-5">
                <div class="card mx-auto contact_card">
                    <div class="card-body">
                        <form method="POST" action="{{ route('password.update') }}">
                            @csrf
                            <input type="hidden" name="token" value="{{ $token }}">
                            <div class="form-group">
                                <input type="email" name="email" class="form-control contact_input @error('email') is-invalid @enderror" placeholder="Email" id="email" required autocomplete="off" value="{{ $email ?? old('email') }}" autofocus>
                                <label for="email" class="contact_label">{{ __('Email') }}</label>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" class="form-control contact_input @error('password') is-invalid @enderror" placeholder="Password" id="password" required autocomplete="off">
                                <label for="password" class="contact_label">{{ __('Password') }}</label>
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="password" name="password_confirmation" class="form-control contact_input @error('password_confirmation') invalid @enderror" placeholder="Confirm Password" id="password-confirm" required autocomplete="off">
                                <label for="password-confirm" class="contact_label">{{ __('Confirm Password') }}</label>
                                @error('password_confirmation')
                                    <span class="helper-text" data-error="{{ $message }}"></span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-block btn-success button_success_block">{{ __('Reset Password') }}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection