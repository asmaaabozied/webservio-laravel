@extends('layouts.app')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-bold">{{trans('lang.eProviderAdmin_plural') }}
                </h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb bg-white float-sm-right rounded-pill px-4 py-2 d-none d-md-flex">
                    <li class="breadcrumb-item"><a href="{{url('/dashboard')}}"><i class="fas fa-tachometer-alt"></i> {{trans('lang.dashboard')}}</a></li>
                    <li class="breadcrumb-item"><a href="{!! route('e_ProviderAdmins.index') !!}">{{trans('lang.eProviderAdmin_plural')}}</a>
                    </li>
                    <li class="breadcrumb-item active">{{trans('lang.eProviderAdmin_table')}}</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<div class="content">
    <div class="clearfix"></div>
    @include('flash::message')
    <div class="card shadow-sm">
        <div class="card-header">
            <ul class="nav nav-tabs d-flex flex-md-row flex-column-reverse align-items-start card-header-tabs">
                <div class="d-flex flex-row">
                    <li class="nav-item">
                        <a class="nav-link active" href="{!! url()->current() !!}"><i class="fas fa-list mr-2"></i>{{trans('lang.eProviderAdmin_table')}}</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link " href="{!! route('e_ProviderAdmins.create') !!}"><i class="fas fa-plus mr-2"></i>{{trans('lang.eProviderAdmin_create')}}</a>
                        </a>
                    </li>


                </div>
                @include('layouts.right_toolbar', compact('dataTable'))
            </ul>
        </div>
        <div class="card-body">
            @include('e_provider_admins.table')
            <div class="clearfix"></div>
        </div>
    </div>
</div>
@endsection