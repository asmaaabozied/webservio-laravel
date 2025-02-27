<?php
/*
 * File name: GalleryDataTable.php
 * Last modified: 2021.11.24 at 19:18:10
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2022
 */

namespace App\DataTables;

use App\Models\CustomField;
use App\Models\Gallery;
use App\Models\Media;
use App\Models\Video;
use Barryvdh\DomPDF\Facade as PDF;
use Yajra\DataTables\DataTableAbstract;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder;
use Yajra\DataTables\Services\DataTable;

class VideoDataTable extends DataTable
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
            ->editColumn('name', function ($gallery) {
                return getMediaColumn($gallery, 'name');
            })
            ->editColumn('file_name', function ($gallery) {
                return getStripedHtmlColumn($gallery, 'file_name');
            })
            ->editColumn('disc', function ($gallery) {
                return getLinksColumnByRouteName([$gallery->eProvider], 'eProviders.edit', 'id', 'name');
            })
            ->editColumn('updated_at', function ($gallery) {
                return getDateColumn($gallery, 'updated_at');
            })
            ->addColumn('action', 'galleries.datatables_actions')
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
        // $columns = [
        //     [
        //         'data' => 'name',
        //         'title' => 'name',

        //     ],
        //     [
        //         'data' => 'file_name',
        //         'title' => trans('lang.e_provider_video'),
        //         'searchable' => false, 'orderable' => false, 'exportable' => false, 'printable' => false,
        //     ],
        //     [
        //         'data' => 'disc',
        //         'name' => 'disc',
        //         'title' =>'disc',
        //     ],
        //     [
        //         'data' => 'size',
        //         'title' =>'size',
        //         'searchable' => false,
        //     ]
        $columns = [
            // [
            //     'data' => 'description',
            //     'title' => trans('lang.gallery_description'),

            // ],
            // [
            //     'data' => 'image',
            //     'title' => trans('lang.gallery_image'),
            //     'searchable' => false, 'orderable' => false, 'exportable' => false, 'printable' => false,
            // ],
            
            [
                
                'data' => 'e_provider.name.en',
                'name' => 'eProvider.name',
                'title' => trans('lang.gallery_e_provider_id'),
                
            ]
            ,
            [
                'data' => 'updated_at',
                'title' => trans('lang.gallery_updated_at'),
                'searchable' => false,
            ]
        ];

        $hasCustomField = in_array(Video::class, setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFieldsCollection = CustomField::where('custom_field_model', Video::class)->where('in_table', '=', true)->get();
            foreach ($customFieldsCollection as $key => $field) {
                array_splice($columns, $field->order - 1, 0, [[
                    'data' => 'custom_fields.' . $field->name . '.view',
                    'title' => trans('lang.gallery_' . $field->name),
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
     * @param Media $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Video $model)
    {
        if (auth()->user()->hasRole('provider')) {
         
            return $model
            ->newQuery()
            ->with("eProvider")
                ->join('e_provider_users', 'e_provider_users.e_provider_id', '=', 'videos.e_provider_id')
                ->groupBy('videos.id')
                ->select("e_provider_id")
                ->where('e_provider_users.user_id', auth()->id());
        } else {
            return $model->newQuery()->with("eProvider")->select("$model->table.*");
        }
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
            ->addAction(['width' => '80px', 'printable' => false, 'responsivePriority' => '100'])
            ->parameters(array_merge(
                config('datatables-buttons.parameters'), [
                    'language' => json_decode(
                        file_get_contents(base_path('resources/lang/' . app()->getLocale() . '/datatable.json')
                        ), true)
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
        return 'videosdatatable_' . time();
    }
}
