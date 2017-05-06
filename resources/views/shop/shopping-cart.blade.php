@extends('layouts.app')


@section('title')
    Shopping Cart
@endsection


@section('header')


    @include('header.header')
@endsection




@section('content')

    @if(Session::has('success'))
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
                <div id="charge-message" class="alert alert-success">
                    {!!Session::get('success')  !!}
                </div>
            </div>
        </div>
    @endif


    <script type="text/javascript" src="/cart.js" ></script>
    @if(Session::has('cart'))
        <div class="row">
            <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                <ul class="list-group">
                    @foreach($products as $product)
                        <li class="list-group-item">
                            <span class="badge">
                                {{$product['qty']}}
                            </span>
                            <strong>{{$product['item']['title']}}</strong>
                            <span class="label label-success">
                                {{$product['price']}}
                            </span>
                            <div class="btn-group">
                                <button type="button"
                                        class=" btn btn-primary btn-xs dropdown-toggle" data-toggle="dropdown">

                                    Действие <span class="caret"></span>

                                </button>

                                <ul class="dropdown-menu">
                                    <li><a href="{{route('reduceByOne',['id'=>$product['item']['id']])}}">Уменьшить на 1</a></li>
                                    <li><a href="{{route('removeItem',['id'=>$product['item']['id']])}}">Очистить все</a></li>

                                </ul>
                            </div>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>



        <div class="row">
            <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                <strong>Итого: {{$totalPrice}}</strong>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                <a href="{{route('checkout')}}" type="button" class="btn btn-success">
                    Оформить заказ
                </a>
            </div>
        </div>


        {{--<div class="btn-group">--}}
            {{--<button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">Кнопка <span class="caret"></span></button>--}}
            {{--<ul class="dropdown-menu">--}}
                {{--<li><a href="#">Пункт 1</a></li>--}}
                {{--<li><a href="#">Пункт 2</a></li>--}}
                {{--<li class="divider"></li>--}}
                {{--<li><a href="#">Пункт 3</a></li>--}}
            {{--</ul>--}}
        {{--</div>--}}










    @else
        <div class="row">
            <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                <h2>Корзина пуста</h2>
            </div>
        </div>
    @endif
@endsection
