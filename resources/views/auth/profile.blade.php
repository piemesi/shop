@extends('layouts.app')

@section('header')
    @include('header.header')

@endsection

@section('content')
    <div class="row">

        <div class="col-md-8 col-sm-offset-2 ">
        <h3>Вашы заказы</h3>

        @foreach($orders as $order)

            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong>Заказ # {{$order->id}}</strong>
                </div>
                <div class="panel-body ">
                    <ul class="list-group">
                        @foreach($order->cart->items as $item)
                            <li class="list-group-item">
                                <span class="badge">{{$item['price']}}</span>
                                <strong> арт. {{$item['item']['id']}} </strong>  {{$item['item']['title']}}  &mdash; [ {{$item['qty']}} шт. ]
                            </li>

                        @endforeach

                    </ul>
                </div>
                <div class="panel-footer">
                    <strong>
                        Итого: {{$order->cart->totalPrice}}
                    </strong>
                </div>
            </div>
        @endforeach
        </div>
    </div>
@endsection