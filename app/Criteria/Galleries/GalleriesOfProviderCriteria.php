<?php
/*
 * File name: GalleriesOfUserCriteria.php
 * Last modified: 2021.02.21 at 14:50:32
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Criteria\Galleries;

use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class GalleriesOfProviderCriteria.
 *
 * @package namespace App\Criteria\Galleries;
 */
class GalleriesOfProviderCriteria implements CriteriaInterface
{
    /**
     * @var provider
     */
    private $providerId;

    /**
     * GalleriesOfproviderCriteria constructor.
     */
    public function __construct($providerId)
    {
        $this->providerId = $providerId;
    }

    /**
     * Apply criteria in query repository
     *
     * @param string $model
     * @param RepositoryInterface $repository
     *
     * @return mixed
     */
    public function apply($model, RepositoryInterface $repository)
    {
        if (auth()->user()->hasRole('admin')) {
            return $model->where('e_provider_id',$this->providerId);
        } 
        // elseif (auth()->user()->hasRole('provider')) {
        //     return $model->join('e_provider_users', 'e_provider_users.e_provider_id', '=', 'galleries.e_provider_id')
        //         ->groupBy('galleries.id')
        //         ->select('galleries.*')
        //         ->where('e_provider_users.user_id', $this->userId);
        // } else {
        //     return $model;
        // }
    }
}
