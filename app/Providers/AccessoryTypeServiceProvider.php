<?php

namespace App\Providers;

use App\AccessosaryType;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\ServiceProvider;

class AccessoryTypeServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        $accessoryTypes = AccessosaryType::all()->pluck('title', 'id');

        $allInfoPages = [
            'contacts' => 'Контакты',
            'newcollection' => 'Новая коллекция',
            'wholesale' => 'Оптовая продажа', 'payment' => 'Оплата',
            'delivery' => 'Доставка',
        ];
        view()->share('allInfoPages', $allInfoPages);
        Config::set(['allInfoPages' => $allInfoPages]);

        view()->share('allAccessoryTypes', $accessoryTypes);
        Config::set(['allAccessoryTypes' => $accessoryTypes]);
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
