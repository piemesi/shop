@extends('layouts.app')




@section('header')
    @include('header.header')
@endsection
@section('bread_crumbs')


    <div class="bread_crumbs">

        {!! Breadcrumbs::render() !!}

    </div>
@endsection




@section('content')
    @include('catalog.items')
@endsection


{{--@section('main_category')--}}
    {{--@include('main.category')--}}
{{--@endsection--}}


{{--@section('main_info')--}}
    {{--@include('main.info')--}}
{{--@endsection--}}

