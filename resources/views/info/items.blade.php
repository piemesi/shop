 {{--<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>--}}
 {{--<script src="http://virronen.com.opt-js.1c-bitrix-cdn.ru/bitrix/templates/virronen_base/js/isotope.js?144692195840858"></script>--}}

 {{--<script type="text/javascript"  src="//npmcdn.com/isotope-layout@3/dist/isotope.pkgd.js" ></script>--}}
<script type="text/javascript" src="/info.js" ></script>
{{--<script type="text/javascript"  src="//npmcdn.com/isotope-layout@3/dist/isotope.pkgd.js" ></script>--}}
<style>
    /** { box-sizing: border-box; }*/

    /*body {*/
        /*font-family: sans-serif;*/
    /*}*/

    /* ---- button ---- */

    .button {

    }

    .button-group .button {
        display: inline-block;
        padding: 10px 18px;
        margin-bottom: 10px;
        background: none;
        border: none;
        border-bottom: 1px solid #ddd;
        margin-left: 10px;
        /*border-radius: 7px;*/
        /*background-image: linear-gradient( to bottom, hsla(0, 0%, 0%, 0), hsla(0, 0%, 0%, 0.2) );*/
        /*color: #222;*/
        /*font-family: sans-serif;*/
        /*font-size: 16px;*/
        /*text-shadow: 0 1px white;*/
        cursor: pointer;
        float: left;
        margin-right: 1px;
width: 250px;
        color: #212121;
        font: 14px Proxima Nova Regular;
        text-decoration: none;
        text-transform: uppercase;
        padding: 16px 0 16px 20px;
    }

    .button:hover {
        /*text-shadow: 0 1px hsla(0, 0%, 100%, 0.5);*/
        color: #222;
        background-color: #fff;
        border:1px #eee solid;
    }

    .button:focus {
        /*text-shadow: 0 1px hsla(0, 0%, 100%, 0.5);*/
        color: #222;
        background-color: #fff;
        border:1px #eee solid;
    }

    .button:active,
    .button.is-checked {
        background-color:  #fff;
    }

    .button.is-checked {
        color: #222;
        background-color: #fff;
        text-shadow: 0 -1px hsla(0, 0%, 0%, 0.8);
    }

    .button:active {
        /*box-shadow: inset 0 1px 10px hsla(0, 0%, 0%, 0.8);*/
        border:1px #eee solid;
        font-weight: bold;
    }

    /* ---- button-group ---- */

    .button-group:after {
        content: '';
        display: block;
        clear: both;
    }

    /*.button-group .button:first-child { border-radius: 0.5em 0 0 0.5em; }*/
    /*.button-group .button:last-child { border-radius: 0 0.5em 0.5em 0; }*/

    /* ---- isotope ---- */

    .grid-block {
        /*border: 1px solid #333;*/
    }

    /* clear fix */
    .grid-block:after {
        content: '';
        display: block;
        clear: both;
    }

    /* ---- .element-item ---- */

    .element-item {
        position: relative;
        float: left;
        width: 100px;
        height: 100px;
        margin: 5px;
        padding: 10px;
        background: #888;
        color: #262524;
    }

    .element-item > * {
        margin: 0;
        padding: 0;
    }

    .element-item .name {
        position: absolute;

        left: 10px;
        top: 60px;
        text-transform: none;
        letter-spacing: 0;
        font-size: 12px;
        font-weight: normal;
    }

    .element-item .symbol {
        position: absolute;
        left: 10px;
        top: 0px;
        font-size: 42px;
        font-weight: bold;
        color: white;
    }

    .element-item .number {
        position: absolute;
        right: 8px;
        top: 5px;
    }

    .element-item .weight {
        position: absolute;
        left: 10px;
        top: 76px;
        font-size: 12px;
    }

    .element-item.alkali          { background: #F00; background: hsl(   0, 100%, 50%); }
    .element-item.alkaline-earth  { background: #F80; background: hsl(  36, 100%, 50%); }
    .element-item.lanthanoid      { background: #FF0; background: hsl(  72, 100%, 50%); }
    .element-item.actinoid        { background: #0F0; background: hsl( 108, 100%, 50%); }
    .element-item.transition      { background: #0F8; background: hsl( 144, 100%, 50%); }
    .element-item.post-transition { background: #0FF; background: hsl( 180, 100%, 50%); }
    .element-item.metalloid       { background: #08F; background: hsl( 216, 100%, 50%); }
    .element-item.diatomic        { background: #00F; background: hsl( 252, 100%, 50%); }
    .element-item.halogen         { background: #F0F; background: hsl( 288, 100%, 50%); }
    .element-item.noble-gas       { background: #F08; background: hsl( 324, 100%, 50%); }





    .element-item.transition      { background: #FFF;  }
    .element-item.new{
        position: relative;
        float: left;
        width: 100%;
        height: auto;
        margin: 5px;
        padding: 60px 20px 20px 20px;
        background: #fff;
        color: #262524;
        border: #eee 1px solid;
        font: 14px Proxima Nova Regular;
        max-width: 370px;
    }
    .element-item .symbol {
        position: absolute;
        left: 10px;
        top: 0px;
        font-size: 42px;
        font-weight: bold;
        color: black;

        color:teal;
        font-size:28px;
        font-family: initial;
        margin-top: 5px;
    }

    /*.element-item.bgcolor1 {background: #f3e5f5; }*/
    .element-item.bgcolor2  { background: #e0f2f1;  }
    .element-item.bgcolor3      { background: #e8f5e9; }
    /*.element-item.bgcolor4        { background: #efebe9;  }*/
    /*.element-item.bgcolor5      { background: #0F8; }*/
    /*.element-item.bgcolor6 { background: #0FF;   }*/
    /*.element-item.bgcolor7        { background: #00F;  }*/
    /*.element-item.bgcolor8       { background: #F08;   }*/

</style>

<div class="row ">
    <div class="col-xs-12">
        <div class="">
            <div class="col-xs-12">



                    <h1>{{$allInfoPages[$item]}}</h1>


                        <div class="button-group infopage filters-button-group">

                            <button class="button is-checked" data-filter="*">Показать все</button>
@foreach($tags as $tag)
                                <button class="button" data-filter=".tag_{{$tag['id']}}">{{$tag['name']}}</button>
    @endforeach

                            {{--<button class="button" data-filter=".metal">Доставка и Оплата</button>--}}
                            {{--<button class="button" data-filter=".transition">Контакты</button>--}}
                            {{--<button class="button" data-filter=".alkali, .alkaline-earth">Оптом</button>--}}
                            {{--<button class="button" data-filter=":not(.transition)">Новости</button>--}}
                            {{--<button class="button" data-filter=".metal:not(.transition)">Новая коллекция</button>--}}
                            {{--<button class="button" data-filter="numberGreaterThan50">Распродажа до 50%</button>--}}
                            {{--<button class="button" data-filter="ium">name ends with &ndash;ium</button>--}}
                        </div>

                        <div class="grid-block row">


                            @foreach($data as $item)
{{--{{dump($item)}}--}}
                                <?php
                                $mas = array_map(function ($v) {
                                    return 'tag_' . $v['id'].' bgcolor'. $v['id'];
                                },$item['tags']);
                                ?>


                                <div class="element-item col s12 m4 l3 new card-panel  {{join(' ',$mas)}} " data-category="transition">

                                    <p class="symbol">{{$item['title']}}</p>
                                    <p>{!! $item['body'] !!}</p>







                                </div>



                                @endforeach




                            <div class="element-item new transition metal " data-category="transition">

                                <p class="symbol">Контакты</p>
                                <p>По вопросам о наличии товара, заказа и доставки по Москве, МО и Регионам обращаться:
                                    Наши контакты:</p>

                                <p> + 7(925)500-70-37   Бесплатная горячая линия<br>
                                Для приложений: WatsApp, Viber - Пишите нам!<br>
                                E-mail: italianomania@mail.ru</p>

                                <p>Instagram<br>

                                ПОЛНЫЙ КАТАЛОГ ТОВАРОВ НА НАШЕЙ СТРАНИЦЕ В FACEBOOK</p>







                            </div>

                        </div>







            </div>
        </div>
    </div>
</div>