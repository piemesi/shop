@extends('layouts.app')

@section('main_category')
    <div class="main_category">
        <div class="category_item cat_1 waves-effect waves-black" style="background:#000 url(/main_catalog/acc1.jpg) no-repeat 50% 50% / cover"><a href="/catalog/accessory/"><span>Аксессуары</span></a></div>
        <div class="category_item cat_2 waves-effect waves-black" style="background:#000 url(/main_catalog/femalebag2.jpg) no-repeat 50% 50% / cover"><a href="/catalog/female/"><span>Женские сумки</span></a></div>
        <div class="category_item cat_3 waves-effect waves-black" style="background:#000 url(/main_catalog/klatch2.jpg) no-repeat 50% 50% / cover"><a href="/catalog/clutches/"><span>Клатчи</span></a></div>
        <div class="category_item cat_4 waves-effect waves-black" style="background:#000 url(/main_catalog/stole.jpg) no-repeat 50% 50% / cover"><a href="/catalog/neck/"><span>Плантины платки</span></a></div>
        <div class="clear"></div>
    </div>
@endsection