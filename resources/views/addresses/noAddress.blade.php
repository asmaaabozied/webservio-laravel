@extends('layouts.app')
@push('css_lib')
    <link rel="stylesheet" href="{{asset('vendor/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/select2/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/summernote/summernote-bs4.min.css')}}">
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
                        <a class="nav-link " href="{!!route('galleries.edit',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.gallery')}}</a> 
                    </li>
                    {{-- <li class="nav-item">
                        <a class="nav-link " href="{!! route('requests.edit',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.requests')}}</a> 
                   </li> --}}
                   <li class="nav-item">
                    <a class="nav-link " href="{!! route('awards.edit',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.award_plural')}}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="{!! route('experiences.edit',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.experience')}}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="{!! route('availabilityHours.edit',$eProvider->id) !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.e_provider_availability_range')}}</a>
                </li>
                    <li class="nav-item">
                        <a class="nav-link active " href="{!! url()->current() !!}"><i class="fas fa-edit mr-2"></i>{{trans('lang.e_provider_addresses')}}</a>
                    </li> 
                </ul>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="d-block">
                        <button class="btn btn-primary " id="create_award_btn">create Adddress</button>
                    </div>
                    <div class="create_modal d-none" >
                        {!! Form::open(['route' => 'addresses.store']) !!}
                        <div class="row">
                            @include('addresses.fields')
                        </div>
                        {!! Form::close() !!}
                        <div class="clearfix"></div>
                    </div>
                    
                    @if ($addresss)
                        <div class="p-4 m-2">
                            <table  id="example" class="display table" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Description</th>
                                        <th>Address</th>
                                        <th>User id</th>
                                        {{-- <th>Updated at</th> --}}
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($addressess as $addresses)
                                    <tr>
                                        <td>{{$addresses->description}}</td>
                                        <td>{{$addresses->addresses}}</td>
                                        <td>{{$addresses->user_id}}</td>
                                        <td>
                                            <form method="POST" action="" accept-charset="UTF-8">
                                                <a  href="{!! route('awards.edit',0) !!}"><i class="fa fa-edit mr-2"></i></a>
                                                <input name="_method" type="hidden" value="DELETE"><input name="_token" type="hidden" value="4vjLnRg3RQswQYZbQv7uRdSDwtsfM94gqHOxMrDn">
                                                <button type="submit" class="btn btn-link text-danger" onclick="return confirm('Are you sure?')"><i class="fas fa-trash"></i></button>
                                            </form>  
                                        </td>
                                       
                                    </tr>  
                                 
                                    @endforeach
                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                    @endif
                </div>
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
    @include('layouts.datatables_js')
    <script type="text/javascript">
        Dropzone.autoDiscover = false;
        var dropzoneFields = [];
    </script>
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
        });
    </script>
@endpush
