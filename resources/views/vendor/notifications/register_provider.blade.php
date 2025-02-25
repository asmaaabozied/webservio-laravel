@component('mail::message')
{{-- Greeting --}}
@if (! empty($greeting))
# {{ $greeting }}
@else
@if ($level === 'error')
# @lang('Whoops!')
@else
# @lang('Dear ') {{$user->name}} ,
@endif
@endif

{{-- Intro Lines --}}
@foreach ($introLines as $line)
{{ $line }}

@endforeach

@component('mail::panel')
<tr>
<td><b>Name</b></td>
<td class="text-right">{{$user->name}}</td>
</tr>
@endcomponent
@component('mail::panel')
<tr>
<td><b>Email</b></td>
<td class="text-right"><small>{{$user->email}}</small></td>
</tr>
@endcomponent
@component('mail::panel')
<tr>
<td><b>Phone Number</b></td>
<td class="text-right">{{$user->phone_number}}</td>
</tr>
@endcomponent
@component('mail::panel')
<tr>
<td><b>Register at </b></td>
<td class="text-right">{{$user->created_at}}</td>
</tr>
@endcomponent

{{-- Salutation --}}
@if (! empty($salutation))
{{ $salutation }}
@else
@lang('Regards'),<br>
{{ setting('app_name',config('app.name')) }}
@endif

@endcomponent
