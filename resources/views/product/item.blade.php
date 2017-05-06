


<div class="row ">
    <div class="col-xs-12">



                <div class="wrap_detail">
                    <h1>{{$product->title}}</h1>
                    <div class="left_block">


                        <div class="infodiv">
                            <div class="parameter">Код: {{$product->code}}</div>
                            <div class="parameter">В наличие: @if ($product->is_available)
                                  <span class=" green-text">Да</span>
                                @else <p>
                                        <span class="grey-text">На заказ</span>
                                </p> @endif</div>
                           @if (!empty($product->color))
                                <div class="parameter">Цвет: {{$product->color}}</div>

                            @endif

                        </div>
                        <div class="detail_result">
                            <div class="result_rice_order">{{$product->price}} руб. <span></span></div>
                            <div class="in_basket">
                                {{--<a href="#" class="add_to_cart" onclick="add_to_cart({{$product->id}}); return false;"--}}
                                   {{--id="bx_117848907_{{$product->id}}_buy_link">Добавить в корзину</a>--}}

                                <a href="{{route('addToCart',['id'=>$product->id,
                                'pageItem'=>$pageItem,
                                 'brand'=>$brand])}}" class="add_to_cart"
                                id="bx_117848907_{{$product->id}}_buy_link">Добавить в корзину</a>

                                <a href="{{route('shoppingCart')}}" class="go_cart">Перейти в корзину</a>
                            </div>
                        </div>

                    </div>
                    <div class="right_block">
                        <div class="connected-carousels">
                            <div class="stage">
                                <div class="carousel carousel-stage" data-jcarousel="true">
                                    <ul class="my-gallery" data-pswp-uid="1" >



                                        <?php $images = json_decode($product->image);
                                        $images = (array)$images;
                                        sort($images);

                                             if($product->main_image != null && !empty($product->main_image) )
                                                 {
                                                     $arr[0]= $product->main_image;
                                                     array_unshift($arr, $images);

                                                 }


                                        ?>

                                        @foreach($images as $image)
                                                @if( file_exists("storage/{$image}") )

                                                    <li>
                                                        <figure class="item" itemprop="associatedMedia" itemscope=""
                                                                itemtype="http://schema.org/ImageObject">
                                                            <a href="<?php echo asset("storage/{$image}")?>"
                                                               class="" rel="gallery1" itemprop="contentUrl" data-size="800x600">
                                                                <img itemprop="thumbnail"
                                                                   src="<?php echo asset("storage/{$image}")?>"
                                                                     alt="">
                                                            </a>
                                                            <figcaption itemprop="caption description"></figcaption>
                                                        </figure>
                                                    </li>
                                                @endif
                                            @endforeach




                                    </ul>
                                </div>
                            </div>


                            <div class="navigation">
                                <div class="prev_navigation controls inactive" data-jcarouselcontrol="true"></div>
                                <div class="carousel carousel-navigation" data-jcarousel="true">
                                    <ul style="left: 0px; top: 0px;" >

                                        @foreach($images as $image)
                                            @if( file_exists("storage/{$image}") )

                                                <li data-jcarouselcontrol="true">
                                                    <img width="64" src="<?php echo asset("storage/{$image}")?>" alt=""></li>

                                            @endif
                                        @endforeach



                                    </ul>
                                </div>
                                <div class="next_navigation controls inactive" data-jcarouselcontrol="true"></div>
                            </div>

                        </div>


                    </div>

                    <div class="row"><div class="col-xs-1"> </div>
                        <div class="col-xs-10  ">
                            <div class="infodiv">
                                <div class="parameter">Описание: {{$product->info}}</div>
                                <div class="parameter">{!! $product->body !!}</div>
                            </div></div>

                        <div class="col-xs-1"> </div>
                    </div>

                </div>

                <div class="clear"></div>
                <div class="wrap_recommend">
                    <div class="recommend_head">
                        <h2>Мы рекомендуем</h2>
                        <span></span>
                    </div>

                    {{--<div class="wrap_grid_recommend">--}}
                        {{--<div class="grid" style="position: relative; height: 750px;">--}}
                            {{--<div class="grid-item" style="position: absolute; left: 0px; top: 0px;">--}}
                                {{--<div class="grid_image waves-effect waves-light"><a--}}
                                            {{--href="/catalog/middle/bordo_druid_zipper/"><img--}}
                                                {{--src="//virronen.com.opt-images.1c-bitrix-cdn.ru/upload/resize_cache/iblock/a2b/400_400_2/a2b56072b94e910241d476d8cf9ffbcf.jpg?147629844745063"--}}
                                                {{--alt=""></a></div>--}}
                                {{--<div class="grid_title"><a href="/catalog/middle/bordo_druid_zipper/">bordo druid--}}
                                        {{--zipper</a></div>--}}
                                {{--<div class="grid_price"><a href="/catalog/middle/bordo_druid_zipper/">6900.00 руб.</a>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            {{--<div class="grid-item" style="position: absolute; left: 300px; top: 0px;">--}}
                                {{--<div class="grid_image waves-effect waves-light"><a href="/catalog/bags/bordo_portfel/"><img--}}
                                                {{--src="//virronen.com.opt-images.1c-bitrix-cdn.ru/upload/resize_cache/iblock/955/400_400_2/95533957250646f4330d47f3376b4125.JPG?147756668749938"--}}
                                                {{--alt=""></a></div>--}}
                                {{--<div class="grid_title"><a href="/catalog/bags/bordo_portfel/">bordo portfel</a></div>--}}
                                {{--<div class="grid_price"><a href="/catalog/bags/bordo_portfel/">6900.00 руб.</a></div>--}}
                            {{--</div>--}}
                            {{--<div class="grid-item" style="position: absolute; left: 0px; top: 375px;">--}}
                                {{--<div class="grid_image waves-effect waves-light"><a--}}
                                            {{--href="/catalog/middle/california_antracite_2_0/"><img--}}
                                                {{--src="//virronen.com.opt-images.1c-bitrix-cdn.ru/upload/resize_cache/iblock/7fa/400_400_2/7fa308f5b54efb90857a09039263b6db.jpg?148950880258525"--}}
                                                {{--alt=""></a></div>--}}
                                {{--<div class="grid_title"><a href="/catalog/middle/california_antracite_2_0/">california--}}
                                        {{--antracite 2.0</a></div>--}}
                                {{--<div class="grid_price"><a href="/catalog/middle/california_antracite_2_0/">8000.00--}}
                                        {{--руб.</a></div>--}}
                            {{--</div>--}}
                            {{--<div class="grid-item" style="position: absolute; left: 300px; top: 375px;">--}}
                                {{--<div class="grid_image waves-effect waves-light"><a--}}
                                            {{--href="/catalog/big/navy_flotter_box/"><img--}}
                                                {{--src="//virronen.com.opt-images.1c-bitrix-cdn.ru/upload/resize_cache/iblock/700/400_400_2/7005a1009abb07eadc2f3a7b339cb259.jpg?147551566149739"--}}
                                                {{--alt=""></a></div>--}}
                                {{--<div class="grid_title"><a href="/catalog/big/navy_flotter_box/">navy flotter box </a>--}}
                                {{--</div>--}}
                                {{--<div class="grid_price"><a href="/catalog/big/navy_flotter_box/">8000.00 руб.</a></div>--}}
                            {{--</div>--}}

                        {{--</div>--}}
                    {{--</div>--}}
                </div>


                <!-- Root element of PhotoSwipe. Must have class pswp. -->
                <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

                    <!-- Background of PhotoSwipe.
                         It's a separate element as animating opacity is faster than rgba(). -->
                    <div class="pswp__bg"></div>

                    <!-- Slides wrapper with overflow:hidden. -->
                    <div class="pswp__scroll-wrap">

                        <!-- Container that holds slides.
                            PhotoSwipe keeps only 3 of them in the DOM to save memory.
                            Don't modify these 3 pswp__item elements, data is added later on. -->
                        <div class="pswp__container">
                            <div class="pswp__item"></div>
                            <div class="pswp__item"></div>
                            <div class="pswp__item"></div>
                        </div>

                        <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
                        <div class="pswp__ui pswp__ui--hidden">

                            <div class="pswp__top-bar">

                                <!--  Controls are self-explanatory. Order can be changed. -->

                                <div class="pswp__counter"></div>

                                <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                                <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                                <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

                                <!-- Preloader demo http://codepen.io/dimsemenov/pen/yyBWoR -->
                                <!-- element will get class pswp__preloader--active when preloader is running -->
                                <div class="pswp__preloader">
                                    <div class="pswp__preloader__icn">
                                        <div class="pswp__preloader__cut">
                                            <div class="pswp__preloader__donut"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
                            </button>

                            <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
                            </button>

                            <div class="pswp__caption">
                                <div class="pswp__caption__center"></div>
                            </div>

                        </div>

                    </div>

                </div>





    </div>
</div>