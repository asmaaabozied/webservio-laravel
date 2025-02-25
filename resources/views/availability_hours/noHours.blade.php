@extends('layouts.app')
@push('css_lib')
<link rel="stylesheet" href="{{asset('vendor/icheck-bootstrap/icheck-bootstrap.min.css')}}">
<link rel="stylesheet" href="{{asset('vendor/select2/css/select2.min.css')}}">
<link rel="stylesheet" href="{{asset('vendor/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{asset('vendor/summernote/summernote-bs4.min.css')}}">
<link rel="stylesheet" href="{{asset('vendor/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}">
<link rel="stylesheet" href="{{asset('vendor/dropzone/min/dropzone.min.css')}}">
@include('layouts.datatables_css')

@endpush
@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-bold">{{trans('lang.e_provider_plural') }}<small class="mx-3">|</small><small>{{trans('lang.e_provider_desc')}}</small>
                </h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb bg-white float-sm-right rounded-pill px-4 py-2 d-none d-md-flex">
                    <li class="breadcrumb-item"><a href="{{url('/dashboard')}}"><i class="fas fa-tachometer-alt"></i> {{trans('lang.dashboard')}}</a></li>
                    <li class="breadcrumb-item"><a href="{!! route('eProviders.index') !!}">{{trans('lang.e_provider_plural')}}</a>
                    </li>
                    <li class="breadcrumb-item active">{{trans('lang.e_provider_edit')}}</li>

                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
<div class="content">
    <div class="clearfix"></div>
    @include('flash::message')
    @include('adminlte-templates::common.errors')
    <div class="clearfix"></div>
    <div class="card shadow-sm">
        <div class="card-header">
            <ul class="nav nav-tabs d-flex flex-row align-items-start card-header-tabs">
                @can('eProviders.index')
                <li class="nav-item">
                    <a class="nav-link" href="{!! route('eProviders.index') !!}"><i class="fa fa-list mr-2"></i>{{trans('lang.e_provider_table')}}</a>
                </li>
                @endcan
                @can('eProviders.edit')
                <li class="nav-item">
                    <a class="nav-link " href="{!!route('eProviders.edit',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.e_provider_edit')}}</a>
                </li>
                @endcan
                <li class="nav-item">
                    <a class="nav-link " href="{!! route('eProvider.edit-service',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.e_service')}}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link  " href="{!!route('eProvider.edit-gallery',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.gallery')}}</a>
                </li>
                {{-- <li class="nav-item">
                        <a class="nav-link  " href="#"><i class="fas fa-edit mr-2"></i>{{trans('lang.requests')}}</a>
                </li> --}}
                <li class="nav-item">
                    <a class="nav-link " href="{!! route('eProvider.edit-award',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.award_plural')}}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="{!! route('eProvider.edit-exp',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.experience')}}</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="{!! url()->current() !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.e_provider_availability_range')}}</a>
                </li>
               
                {{-- <li class="nav-item">
                    <a class="nav-link " href="{!! route('addresses.edit',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.e_provider_addresses')}}</a>
                </li> --}}
                </li>
            </ul>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="d-block">
                    <button class="btn btn-primary ml-4" id="create_award_btn">Add Availability Hour</button>
                </div>
                <div class="create_modal d-none">
                    {!! Form::open(['route' => 'availabilityHours.store']) !!}
                    <div class="row">
                        @include('availability_hours.provider_fields')
                    </div>
                    {!! Form::close() !!}
                    <div class="clearfix"></div>
                </div>

            </div>
        </div>
        @if ($availabilityhours)
        <div class="p-4 m-2">
            <table id="example" class="display table" style="width:100%">
                <thead>
                    <tr>
                        <th>Day</th>
                        <th>Start At</th>
                        <th>End At</th>
                        <th>Data </th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($availabilityhours as $hour)
                    <tr>
                        <td>{{$hour->day}}</td>
                        <td>{{$hour->start_at}}</td>
                        <td>{{$hour->end_at}}</td>
                        <td>{{$hour->data}}</td>

                        <td>
                            <div class='btn-group btn-group-sm'>

                                @can('availabilityHours.edit')
                                <a data-toggle="tooltip" data-placement="left" title="{{trans('lang.availability_hour_edit')}}" href="{{ route('availabilityHours.edit', $hour->id) }}" class='btn btn-link'>
                                    <i class="fas fa-edit"></i> </a>
                                @endcan

                                @can('availabilityHours.destroy')
                                {!! Form::open(['route' => ['availabilityHours.destroy', $hour->id], 'method' => 'delete']) !!}
                                {!! Form::button('<i class="fas fa-trash"></i>', [
                                'type' => 'submit',
                                'class' => 'btn btn-link text-danger',
                                'onclick' => "return confirm('Are you sure?')"
                                ]) !!}
                                {!! Form::close() !!}
                                @endcan
                            </div>
                        </td>


                    </tr>

                    @endforeach

                </tbody>
            </table>
        </div>
        @endif

        <div class="clearfix"></div>
    </div>
</div>
</div>
@include('layouts.media_modal')
@endsection
@push('scripts_lib')
<!-- <script src="{{asset('vendor/select2/js/select2.full.min.js')}}"></script>
<script src="{{asset('vendor/summernote/summernote.min.js')}}"></script>
<script src="{{asset('vendor/dropzone/min/dropzone.min.js')}}"></script>
<script type="text/javascript"> -->
<script src="{{asset('vendor/select2/js/select2.full.min.js')}}"></script>
    <script src="{{asset('vendor/summernote/summernote.min.js')}}"></script>
    <script src="{{asset('vendor/dropzone/min/dropzone.min.js')}}"></script>
    <script src="{{asset('vendor/moment/moment.min.js')}}"></script>
    <script src="{{asset('vendor/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script>
    <script type="text/javascript">
    Dropzone.autoDiscover = false;
    var dropzoneFields = [];
</script>
@include('layouts.datatables_js')

<script type="text/javascript">
    $(document).ready(function() {
        $('#create_award_btn').on('click', function() {
            $('.create_modal').removeClass('d-none');
            $('.create_modal').addClass('d-block');
            $('#create_award_btn').prop('disabled', true);

        });
        $('#cancel').on('click', function() {
            $('.create_modal').removeClass('d-none');
            $('.create_modal').addClass('d-block');
            $('#create_award_btn').prop('disabled', false);

        });

        $('#example').DataTable();

        $('.select2').select2({
            placeholder: "Select days",
            allowClear: true
        });

    });
</script>
@endpush