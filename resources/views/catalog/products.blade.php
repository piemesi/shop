
@foreach($products as $product)
    @include('catalog.item',['product'=>$product])
@endforeach

