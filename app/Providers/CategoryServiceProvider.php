<?php

namespace App\Providers;

use Illuminate\Support\Facades\Config;
use Illuminate\Support\ServiceProvider;
use TCG\Voyager\Models\Category;

class CategoryServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        $allCategories=[];
        Category::all()->map(function ($item) use (&$allCategories){
            $allCategories[$item->slug]=$item;
            return  [$item->id=>$item->title];
        });

        view()->share('allCategories', $allCategories); //Accommodation::all()
        Config::set(['allCategories' => $allCategories]);
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
