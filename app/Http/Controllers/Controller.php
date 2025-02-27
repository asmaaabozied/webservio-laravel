<?php
/*
 * File name: Controller.php
 * Last modified: 2021.09.15 at 13:28:01
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Response;
use InfyOm\Generator\Utils\ResponseUtil;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function __construct()
    {
    }

    /**
     * @param $result
     * @param $message
     * @return mixed
     */
    public function sendResponse($result, $message)
    {
        return Response::json(ResponseUtil::makeResponse($message, $result));
    }

    /**
     * @param $error
     * @param int $code
     * @return JsonResponse
     */
    public function sendError($error, $code = 200): JsonResponse
    {
        return Response::json(ResponseUtil::makeError($error), $code);
    }


    /**
     * Example:
     * only=name;rate;total_reviews;categories.has_media;categories.media;categories.media.url
     * @param Request $request
     * @param Collection $collection
     */
    protected function filterCollection(Request $request, Collection &$collection)
    {
        // dd($request->all());
        $only = $this->getOnlyArray($request);
        // dd(array_keys($only));
        $collection->each->setVisible(array_keys($only));
        $collection->map(function ($item) use ($only) {
            foreach ($only as $key => $filter) if (is_array($filter) && count($filter) > 0) {
                foreach ($filter as $key1 => $filter1) {
                    if (is_array($filter1) && count($filter1) > 0) {
                        $item->getRelations()[$key]->map(function ($item) use ($key1, $filter1) {
                            $item->getRelations()[$key1]->each->setVisible(array_keys($filter1));
                        });
                    }
                }
                if ($item->getRelations()[$key]->each) {
                    return $item->getRelations()[$key]->each->setVisible(array_keys($filter));
                }
            }
            //to retrieve spoken languages array
            $item->spoken_languages = $item->spoken_languages ? json_decode($item->spoken_languages) : [];


            if($item->availabilityHours && $item->availabilityHours->count() > 0){
                $days=[];
                foreach ($item->availabilityHours as $value) {
                    
                    array_push( $days , $value['day']);
                }

                $availabilityDays['days'] = $days ;
                $availabilityDays['start_at'] = $item->availabilityHours->first()->start_at ;
                $availabilityDays['end_at'] = $item->availabilityHours->first()->end_at ;
                $availabilityDays['data'] = $item->availabilityHours->first()->data ;

               $item->availabilityDays = $availabilityDays;
            }else{
                $item->availabilityDays = "null";
            }

            return $item;
        });
    }

    /**
     * @param Request $request
     */
    protected function getOnlyArray(Request $request): array
    {
        $only = [];
        if ($request->has('only')) {
            $only = $request->get('only');
            // dd($only);
            $only = explode(';', $only);
            $only = $this->buildOnlyTree($only, '.');
        }
        return $only;
    }

    protected function buildOnlyTree($categoryLines, $separator): array
    {
        $catTree = array();
        foreach ($categoryLines as $catLine) {
            $path = explode($separator, $catLine);
            $node = &$catTree;
            foreach ($path as $cat) {
                $cat = trim($cat);
                if (!isset($node[$cat])) {
                    $node[$cat] = array();
                }
                $node = &$node[$cat];
            }
        }
        return $catTree;
    }

    /**
     * Example:
     * only=name;rate;total_reviews;categories.has_media;categories.media;categories.media.url
     * @param Request $request
     * @param Model $model
     */
    protected function filterModel(Request $request, Model &$model)
    {
        $only = $this->getOnlyArray($request);
        $model->setVisible(array_keys($only));
        foreach ($only as $key => $filter) {
            if (is_array($filter) && count($filter) > 0) {
                foreach ($filter as $key1 => $filter1) {
                    if (is_array($filter1) && count($filter1) > 0) {
                        $model->getRelations()[$key]->map(function ($item) use ($key1, $filter1) {
                            $item->getRelations()[$key1]->each->setVisible(array_keys($filter1));
                        });
                    }
                }
                $model->getRelations()[$key]->each->setVisible(array_keys($filter));
            }
        }
    }

    protected function limitOffset(Request $request, Collection &$collection)
    {
        $limit = $request->get('limit', null);
        $offset = $request->get('offset', null);

        if ($offset && $limit) {
            $collection = $collection->skip($offset);
        }
        if ($limit) {
            $collection = $collection->take($limit);
        }
    }
}
