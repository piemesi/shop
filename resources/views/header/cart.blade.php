<div class="cart_in_head">
    <span></span>
    <div class="cart_info">
        <a href="{{route('shoppingCart')}}">
            {{--/personal/cart/--}}
            <i class="fa fa-shopping-cart" aria-hidden="true"></i> Корзина
            <span class="badge">{{Session::has('cart') ?
             Session::get('cart')->totalQty : ''}}</span>
        </a>
    </div>
</div>