<?php

namespace App\Providers;

use App\Brand;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\ServiceProvider;

class BrandServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {

        $brands = Brand::all()->pluck('title', 'id');
        view()->share('allBrands', $brands);
        Config::set(['allBrands' => $brands]);
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
