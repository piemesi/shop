<div class="row cards-placement">
    <div class="col-xs-12">
        <div class="">
            <div class="col-xs-12">
                <div class="bx_catalog_text" id="hidden_block_cat_list">
                    <ul class="bx_catalog_text_ul">
                        <li id="bx_1847241719_18"><h2 class="bx_catalog_text_title"><a href="/catalog/big/">Большие</a>
                            </h2></li>
                        <li id="bx_1847241719_19"><h2 class="bx_catalog_text_title"><a
                                        href="/catalog/middle/">Средние</a></h2></li>
                        <li id="bx_1847241719_20"><h2 class="bx_catalog_text_title"><a href="/catalog/small/">Малые</a>
                            </h2></li>
                    </ul>
                    <div style="clear: both;"></div>
                </div>

                <div class="catalog_grid">
                    <h1>{{$allCategories[$pageItem]->name}}</h1>
                    <div class="filter_product   ">


                        @foreach($brands as $brand)


                            @php ($brandLink = "/catalog/{$pageItem}/{$brand->id}")

                            <a class="@if(url($brandLink) == url()->current()) active @endif"
                               href="{!!  $brandLink !!} ">{{$brand->title}}</a>
                        @endforeach


                    </div>
                    <div class="grid" style="position: relative; height: 2250px;">


                        @include('catalog.products')


                    </div>
                    @if(empty($noNav))
                        <div class="navigation">
                            @include('catalog.navigation')
                        </div>
                    @endif
                </div>

            </div>
        </div>
    </div>
</div>