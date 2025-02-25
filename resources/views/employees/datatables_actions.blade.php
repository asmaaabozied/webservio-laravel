{!! Form::open(['route' => ['customers.destroy', $id], 'method' => 'delete']) !!}
<div class='btn-group btn-group-sm'>
    {{--<a data-toggle="tooltip" data-placement="left" title="{{trans('lang.user_edit')}}" href="{{ route('users.show', $id) }}" class='btn btn-link'>--}}
    {{--<i class="fas fa-eye"></i> </a>--}}
    <a data-toggle="tooltip" data-placement="left" title="{{trans('lang.user_edit')}}" href="{{ route('users.edit', $id ).'?view=edit' }}" class='btn btn-link'>
        <i class="fas fa-edit"></i> </a>
    {!! Form::button('<i class="fas fa-trash"></i>', [
    'data-toggle' => 'tooltip',
    'data-placement' => 'bottom',
    'title' => trans('lang.user_delete'),
    'type' => 'submit',
    'class' => 'btn btn-link text-danger',
    'onclick' => "swal({title: ".trans('lang.error').", confirmButtonText: ".trans('lang.ok').",
                            text: data.message,type: 'error', confirmButtonClass: 'btn-danger'});"
    ]) !!}

   
</div>
{!! Form::close() !!}
