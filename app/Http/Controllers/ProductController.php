<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Order;
use App\Product;
use Illuminate\Contracts\Mail\Mailable;
use Illuminate\Support\Facades\View;

use Auth;
use Mail;

use Illuminate\Http\Request;
use Session;

class ProductController extends Controller
{
    public function showProduct(Request $request, $pageItem, $brand, $product)
    {

        $product = Product::find($product);

        return View::make('product.page', ['pageItem' => $pageItem, 'brand' => $brand, 'product' => $product]);
    }

    public function addToCart(Request $request, $id, $pageItem, $brand)
    {
        $product = Product::find($id);
        $oldCart = $request->session()->has('cart') ? $request->session()->get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->add($product, $product->id);

        $request->session()->put('cart', $cart);
        return redirect()->route('product', ['item' => $pageItem, 'brand' => $brand, 'product' => $id]);

    }

    public function getReduceByOne($id)
    {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->reduceByOne($id);

        if (count($cart->items)) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return redirect()->route('shoppingCart');

    }

    public function getRemoveItem($id)
    {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);

        if (count($cart->items)) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return redirect()->route('shoppingCart');
    }

    public function getCart()
    {
        if (!Session::has('cart')) {
            return view('shop.shopping-cart'); //,['products'=>null]
        }

        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);

        return view('shop.shopping-cart',
            ['products' => $cart->items,
                'totalPrice' => $cart->totalPrice]);

    }

    public function getCheckout()
    {

        if (!Session::has('cart')) {
            return view('shop.shopping-cart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $total = $cart->totalPrice;

        return view('shop.checkout', [
            'total' => $total
        ]);
    }

    public function postCheckout(Request $request, \Illuminate\Mail\Mailer $mailer )
    {
        if (!Session::has('cart')) {
            return redirect()->route('shoppingCart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);

//        Stripe::  Stripe\Stripe

//        try{
//            Stipe::Charge::create(['amount'*100), currency,source=>token,]);
//        }catch (\Exception $e){
//            return redirect()->route('checkout')->with('error', $e->getMessage());
//        }

        //  dd($request->all());

        $order = new Order();
        $order->cart = serialize($cart);
        $order->name = $request->input('first_name');
        $order->info = $request->input('info');
        $order->last_name = $request->input('last_name');
        $order->phone = $request->input('phone');
        $order->total = $request->input('total');
        $order->email = $request->input('email');
        $order->payment_id = 0;

        Auth::loginUsingId(1); //@todo

//        print_r($order);
        Auth::user()->orders()->save($order);
        $data = $order->toArray();


        $mailer
            ->to($data['email'])
            ->send(new \App\Mail\MyMail($data));
        $mailer
            ->to($data['email'])
            ->send(new \App\Mail\AdminMail($data));


//        Mail::send('mails.order-creation', $data, function ($message) use ($data){
//            $message->to($data['email']);
//            $message->subject('Ваш заказ #'.$data['id'].' успешно создан.');
//        });
//
//        Mail::send('mails.order-admin', $data, function ($message) use ($data){
//            $message->to(config('mail.from')['address']);
//            $message->cc('w@gaynulin.ru');
//            $message->subject('Создан заказ #'.$data['id'].'. Сумма '.$data['total']);
//        });





        print_r($data);
        sleep(2);
        Session::forget('cart');
        return redirect()->route('shoppingCart')->with('success', 'Заказ успешнео создан<br/>На указанный e-mail отправленно подвтерждение.');

//
    }
}
