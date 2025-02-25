<!DOCTYPE html>
<html lang="{{app()->getLocale()}}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{setting('app_name')}} </title>
    <link rel="icon" type="image/png" href="{{$app_logo ?? ''}}" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,600&display=fallback">
    <link rel="stylesheet" href="{{asset('vendor/fontawesome-free/css/all.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/select2/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/summernote/summernote-bs4.min.css')}}">
    <link rel="stylesheet" href="{{asset('dist/css/adminlte.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/styles.min.css')}}">
    @stack('js_lib')
</head>

<body class="hold-transition login-page">


    <div class="login-box" @if(isset($width)) style="width:{{$width}}" @endif>
        <div class="login-logo">
            <a href="{{ url('/') }}"><img src="{{$app_logo}}" alt="{{setting('app_name')}}"></a>
        </div>
        <!-- /.login-logo -->

        @include('flash::message')
        <!-- @include('adminlte-templates::common.errors') -->

        <div class="card shadow-sm">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Register a Provider</p>

                <form action="{{ url('eprovider/handle-register') }}" method="post">
                    {!! csrf_field() !!}

                    <div class="input-group mb-3">
                        <input value="{{ old('name') }}" type="name" class="form-control {{ $errors->has('name') ? ' is-invalid' : '' }}" required name="name" placeholder="{{__('auth.name')}}" aria-label="{{__('auth.name')}}">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        @if ($errors->has('name'))
                        <div class="invalid-feedback">
                            {{ $errors->first('name') }}
                        </div>
                        @endif
                    </div>

                    <div class="input-group mb-3">
                        <input value="{{ old('email') }}" type="email" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" required name="email" placeholder="{{__('auth.email')}}" aria-label="{{__('auth.email')}}">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                        </div>
                        @if ($errors->has('email'))
                        <div class="invalid-feedback">
                            {{ $errors->first('email') }}
                        </div>
                        @endif
                    </div>

                    <div class="input-group mb-3">
                        <input value="{{ old('phone_number') }}" type="phone" class="form-control {{ $errors->has('phone_number') ? ' is-invalid' : '' }}" required name="phone_number" placeholder="{{__('auth.phone')}}" aria-label="{{__('auth.phone')}}">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-phone"></i></span>
                        </div>
                        @if ($errors->has('phone_number'))
                        <div class="invalid-feedback">
                            {{ $errors->first('phone_number') }}
                        </div>
                        @endif
                    </div>

                    <div class="input-group mb-3">
                        <input value="{{ old('password') }}" type="password" class="form-control  {{ $errors->has('password') ? ' is-invalid' : '' }}" required name="password" placeholder="{{__('auth.password')}}" aria-label="{{__('auth.password')}}">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                        </div>
                        @if ($errors->has('password'))
                        <div class="invalid-feedback">
                            {{ $errors->first('password') }}
                        </div>
                        @endif
                    </div>

                    <div class="input-group mb-3">
                        <input value="{{ old('password_confirmation') }}" type="password" required class="form-control  {{ $errors->has('password_confirmation') ? ' is-invalid' : '' }}" name="password_confirmation" placeholder="{{__('auth.password_confirmation')}}" aria-label="{{__('auth.password_confirmation')}}">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                        </div>
                        @if ($errors->has('password_confirmation'))
                        <div class="invalid-feedback">
                            {{ $errors->first('password_confirmation') }}
                        </div>
                        @endif
                    </div>

                    <!-- type Field -->
                    <div class="input-group mb-3">
                        <select class="form-control" require name='e_provider_type_id' id="type-select">
                            <option></option>
                            @foreach($eProviderTypes as $id=>$name)
                            <option @if ( old('e_provider_type_id')==$id) selected @endif value="{{$id}}"> {{$name}} </option>
                            @endforeach
                        </select>
                        @if ($errors->has('e_provider_type_id'))
                        <div class="invalid-feedback">
                            {{ $errors->first('e_provider_type_id') }}
                        </div>
                        @endif
                    </div>
                    <!-- gender Field -->
                    <div class="input-group mb-3">
                        <select class="form-control" require name='gender' id="gender-select">
                            <option ></option>
                            <option @if(old('gender')==0 ) selected @endif value="0"> Male </option>
                            <option @if(old('gender')==1 ) selected @endif value="1"> Female </option>
                        </select>
                        @if ($errors->has('gender'))
                        <div class="invalid-feedback">
                            {{ $errors->first('gender') }}
                        </div>
                        @endif
                    </div>

                    <div class="input-group mb-3">
                        <select class="form-control" name='spoken_languages[]' multiple id="language-select">
                            <!-- @if($errors->first())
                            <option @if( old('spoken_languages')==0 ) selected @endif value="0"> English </option>
                            <option @if( old('spoken_languages')==1 ) selected @endif value="1"> Arabic </option>
                            <option @if( old('spoken_languages')==2 ) selected @endif value="2"> Deutsch </option>
                            <option @if( old('spoken_languages')==3 ) selected @endif value="3"> Espagnal </option>
                            <option @if( old('spoken_languages')==4 ) selected @endif value="4"> French </option>
                            <option @if( old('spoken_languages')==5 ) selected @endif value="5"> Portuguese </option>
                            @else -->
                            <option> </option>
                            <option value="0"> English </option>
                            <option value="1"> Arabic </option>
                            <option value="2"> Deutsch </option>
                            <option value="3"> Espagnal </option>
                            <option value="4"> French </option>
                            <option value="5"> Portuguese </option>

                            <!-- @endif -->

                        </select>
                        @if ($errors->has('spoken_languages'))
                        <div class="invalid-feedback">
                            {{ $errors->first('spoken_languages') }}
                        </div>
                        @endif
                    </div>

                    <!-- <div class="row mb-2"> -->
                    <!-- <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="remember" name="remember"> <label for="remember">
                                    {{__('auth.agree')}}
                                </label>
                            </div>
                        </div> -->
                    <!-- /.col -->
                    <div class="col-8">
                        <center> <button style="margin-left: 25%;" type="submit" class="btn btn-primary btn-block">{{__('auth.register')}}</button> </center>
                    </div>
                    <!-- /.col -->
                    <!-- </div> -->
                </form>




            </div>
            <!-- /.login-card-body -->
        </div>
    </div>
    <!-- /.login-box -->
    <script src="{{asset('vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('dist/js/adminlte.min.js')}}"></script>
    <script src="{{asset('vendor/select2/js/select2.full.min.js')}}"></script>
    <script>
        $('#language-select').select2({
            placeholder: 'Select spoken languages ...',
        });
        $('#type-select').select2({
            placeholder: 'Select provider type ...',
        });
        $('#gender-select').select2({
            placeholder: 'Select gender ...',
        });
    </script>
    @stack('scripts')
</body>

</html>