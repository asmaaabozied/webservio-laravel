<?php
/*
 * File name: EProviderDataTable.php
 * Last modified: 2021.11.24 at 19:18:10
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2022
 */

namespace App\DataTables;

use App\Models\CustomField;
use App\Models\User;
use Barryvdh\DomPDF\Facade as PDF;
use Yajra\DataTables\DataTableAbstract;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder;
use Yajra\DataTables\Services\DataTable;

class EmployeeDataTable extends DataTable
{
    /**
     * custom fields columns
     * @var array
     */
    public static $customFields = [];

    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return DataTableAbstract
     */
    public function dataTable($query)
    {
        $dataTable = new EloquentDataTable($query);
        $columns = array_column($this->getColumns(), 'data');
        $dataTable = $dataTable
             ->editColumn('email', function ($user) {
                return $user->email;
            })
            ->editColumn('name', function ($user) {
                return $user->name;
            })
            ->editColumn('phone_number', function ($user) {
                return $user->phone_number;
            })
            ->editColumn('eprovider', function ($user) {
                // return $user->eProviders;
                return getLinksColumnByRouteName($user->eProviders, 'eProviders.edit', 'id', 'name');
            })
            ->addColumn('action', 'employees.datatables_actions')
            ->rawColumns(array_merge($columns, ['action']));

        return $dataTable;
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        $columns = [
            [
                'data' => 'id',
                'title' => trans('lang.user_id'),

            ],
            [
                'data' => 'avatar',
                'title' => trans('lang.user_avatar'),
                'orderable' => false, 'searchable' => false,

            ],
            [
                'data' => 'name',
                'title' => trans('lang.user_name'),

            ],
            [
                'data' => 'email',
                'title' => trans('lang.user_email'),

            ],
            [
                'data' => 'phone_number',
                'title' => trans('lang.user_phone_number'),

            ],
            [
                'data' => 'eprovider',
                'title' => trans('lang.employee _e_providers'),
                'searchable' => false,
                'orderable' => false
            ],
           
        ];


       // TODO custom element generator
       $hasCustomField = in_array(User::class, setting('custom_field_models',[]));
       if ($hasCustomField) {
           $customFieldsCollection = CustomField::where('custom_field_model', User::class)->where('in_table', '=', true)->get();
           foreach ($customFieldsCollection as $key => $field) {
               array_splice($columns, $field->order - 1, 0, [[
                   'data' => 'custom_fields.' . $field->name . '.view',
                   'title' => trans('lang.user_' . $field->name),
                   'orderable' => false,
                   'searchable' => false,
               ]]);
           }
       }
        return $columns;
    }

    /**
     * Get query source of dataTable.
     *
     * @param EProvider $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(User $model)
    {
        return $model->newQuery()->with('eProviders')
        ->whereHas('eProviders');
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return Builder
     */
    public function html()
    {
        return $this->builder()
            ->columns($this->getColumns())
            ->minifiedAjax()
           ->addAction(['title' => trans('lang.actions'), 'width' => '80px', 'printable' => false, 'responsivePriority' => '100'])
            ->parameters(array_merge(
                config('datatables-buttons.parameters'), [
                    'language' => json_decode(
                        file_get_contents(base_path('resources/lang/' . app()->getLocale() . '/datatable.json')
                        ), true),
                    'fixedColumns' => [],
                ]
            ));
    }

    /**
     * Export PDF using DOMPDF
     * @return mixed
     */
    public function pdf()
    {
        $data = $this->getDataForPrint();
        $pdf = PDF::loadView($this->printPreview, compact('data'));
        return $pdf->download($this->filename() . '.pdf');
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'e_providersdatatable_' . time();
    }
}
