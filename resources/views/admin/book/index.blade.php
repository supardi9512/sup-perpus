@extends('admin.templates.default')

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Data Buku</h3>
            <a href="{{ route('admin.book.create') }}" class="btn btn-success pull-right">Tambah Buku</a>
        </div>
        <div class="box-body table-responsive">
            <table id="dataTable" class="table table-bordered table-hover" style="width:100%">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Judul</th>
                        <th>Deskripsi</th>
                        <th>Jumlah Buku</th>
                        <th>Kategori</th>
                        <th>Sampul</th>
                        <th style="width: 100px;">Aksi</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
    <form action="" method="post" id="deleteForm">
        @csrf
        @method("DELETE")
        <input type="submit" value="Hapus" style="display: none;">
    </form>
@endsection

@push('styles')
    {{-- <!-- DataTables --> --}}
    <link rel="stylesheet" href="{{ asset('assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endpush

@push('scripts')
    {{--  <!-- DataTables -->  --}}
    <script src="{{ asset('assets/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>

    <script src="{{ asset('assets/plugins/bs-notify.min.js') }}"></script>
    @include('admin.templates.partials.alerts')
    <script>
        $(function () {
            $('#dataTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('admin.book.data') }}',
                columns: [
                    { data: 'DT_RowIndex' },
                    { data: 'title' },
                    { data: 'description' },
                    { data: 'qty' },
                    { data: 'category' },
                    { data: 'cover' },
                    { data: 'action' },
                ]
            });
        });
    </script>
@endpush