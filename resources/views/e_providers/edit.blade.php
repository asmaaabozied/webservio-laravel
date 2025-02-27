@extends('layouts.app')
@push('css_lib')
    <link rel="stylesheet" href="{{asset('vendor/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/select2/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/summernote/summernote-bs4.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/dropzone/min/dropzone.min.css')}}">
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
                        <a class="nav-link active" href="{!! url()->current() !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.e_provider_edit')}}</a>
                    </li>
                    @endcan

                    <li class="nav-item">
                    <a class="nav-link " href="{!! route('eProvider.edit-service',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.e_service')}}</a>
                </li>
                    <li class="nav-item">
                        <a class="nav-link " href="{!!route('eProvider.edit-gallery',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.gallery')}}</a>
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
                    <a class="nav-link " href="{!! route('eProvider.edit-hour',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.e_provider_availability_range')}}</a>
                </li>
               
                {{-- <li class="nav-item">
                    <a class="nav-link " href="{!! route('addresses.edit',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.e_provider_addresses')}}</a>
                </li>  --}}
                </ul>
            </div>
            <div class="card-body">
                 {!! Form::model($eProvider, ['route' => ['eProviders.update', $eProvider->id], 'method' => 'patch']) !!}
                <div class="row">
                     @include('e_providers.fields') 
                </div>
                {!! Form::close() !!}
                <div class="clearfix"></div> 
            </div>
        </div>
    </div>
    @include('layouts.media_modal')
@endsection
@push('scripts_lib')
    <script src="{{asset('vendor/select2/js/select2.full.min.js')}}"></script>
    <script src="{{asset('vendor/summernote/summernote.min.js')}}"></script>
    <script src="{{asset('vendor/dropzone/min/dropzone.min.js')}}"></script>
    <script type="text/javascript">
        Dropzone.autoDiscover = false;
        var dropzoneFields = [];
    </script>
@endpush
