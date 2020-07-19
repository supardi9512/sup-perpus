@if (session('toast'))
    <div aria-live="polite" aria-atomic="true" style="position: relative; min-height: 200px; top: 80px; right: 20px;">
        <div style="position: absolute; top: 0; right: 0; z-index: 0;">
            <div class="toast" id="myToast" style="background-color: #28a745; color: #fff;" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-body">
                    {{ session("toast") }}
                </div>
            </div>
        </div>
    </div>
@endif