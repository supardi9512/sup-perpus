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
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <form method="POST" action="{{ route('password.email') }}">
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
                                <button type="submit" class="btn btn-block btn-success button_success_block">{{ __('Send Password Reset Link') }}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection