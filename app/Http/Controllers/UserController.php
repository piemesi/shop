<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

class UserController extends Controller
{
    public function getProfile()
    {
        $orders = Auth::user()->orders;
        $orders->transform(function ($order, $key) { //collection
            $order->cart = unserialize($order->cart);
            return $order;
        });
        return view('auth.profile', [
            'orders' => $orders
        ]);
    }
}
