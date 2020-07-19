@extends('auth.templates.default-auth')

@section('content')
<div class="container" style="margin-top: 100px;">
    <div class="row align-middle">
        <div class="col-12">
            <h3 class="title-page">{{ __('Verify Your Email Address') }}</h3>
        </div>
    </div>
    <hr class="mb-5">
    <div class="row section_content">
        <div class="col-sm-12 mb-5">
            <div class="card mx-auto contact_card">
                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ __('A fresh verification link has been sent to your email address.') }}
                        </div>
                    @endif

                    {{ __('Before proceeding, please check your email for a verification link.') }}
                    {{ __('If you did not receive the email, click ') }}
                    <form class="d-inline" method="POST" action="{{ route('verification.resend') }}">
                        @csrf
                        <button type="submit" class="btn button_block_success align-baseline" style="color: #fff">{{ __('here') }}</button>
                    </form>
                    {{ __(' to request another.') }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection