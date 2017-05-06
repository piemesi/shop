@extends('layouts.app')


{{--<link href="http://materializecss.com/css/ghpages-materialize.css" type="text/css"  rel="stylesheet" />--}}


@section('header')
    @include('header.header')
@endsection
@section('bread_crumbs')


    <div class="bread_crumbs">

        {!! Breadcrumbs::render() !!}

    </div>
@endsection




@section('content')
    <link href="/product.css?<?php echo time();?>" type="text/css"  rel="stylesheet" />
    <script type="text/javascript" src="/product.js" ></script>

    @include('product.item')
@endsection


{{--@section('main_category')--}}
    {{--@include('main.category')--}}
{{--@endsection--}}


{{--@section('main_info')--}}
    {{--@include('main.info')--}}
{{--@endsection--}}


@section('content')

@endsection