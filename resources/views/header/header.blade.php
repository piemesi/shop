@extends('layouts.app')



@section('header')



    <div class="header">
        <div class="wrap_head">
            @include('header.navigation')

            @include('header.logo')


            @include('header.social')

            @include('header.cart')

            @include('header.auth')






        </div>
    </div>

@endsection