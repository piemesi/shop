<div class="grid-item card sticky-action">

    <div class="grid_image  card-image  waves-block waves-light">

        @if($product->main_image != null )

            <img class="activator" width="270" height="270" src="<?php echo asset("storage/{$product->main_image}")?>">
        @else

            <?php $images = json_decode($product->image);
            $images = (array)$images;
            sort($images);

            $image = isset($images[0]) ? $images[0] : null;
            ?>
            @if(!empty($images[0]) and file_exists("storage/{$image}") )
                <img class="activator" width="270" height="270" src="<?php echo asset("storage/{$image}")?>">

            @else
                <img class="activator" width="270" height="270" src="/default.gif">

            @endif

        @endif

    </div>
    <div class="card-content grid_title">

        <p><a href="/catalog/{{$pageItem}}/@if($pageItem=='accessory'){{$product->accessory_id}}@else{{$product->brand_id}}@endif/{{$product->id}}">{{$product->title}}</a></p>
    </div>
    <div class="grid_price">

        @if(!$product->is_available)
            <span title="Товара нет на складе" class="product_not_available"><i
                        class="material-icons ">not_interested</i></span>
        @else
            <span title="Товар есть на складе" class=" product_available"><i
                        class="material-icons ">done_all</i></span>
        @endif



        <a href="/catalog/{{$pageItem}}/@if($pageItem=='accessory'){{$product->accessory_id}}@else{{$product->brand_id}}@endif/{{$product->id}}">
            {{$product->price}} руб. </a>
        <span
                class="card-title activator right grey-text text-darken-4"><i
                    class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal " style=" ">
                                    <span class="card-title grey-text text-darken-4">{{$product->code}}<i
                                                class="material-icons close-btn right">close</i></span>
        <p>
            @if(!empty($product->info))
                {!! $product->info !!}
            @else
                {!! mb_substr(strip_tags($product->body,'<br><strong><i><a>'),0,600) !!}....
            @endif
        </p>
    </div>


</div>