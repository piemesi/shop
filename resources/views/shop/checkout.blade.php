@extends('layouts.app')


@section('title')
    Shopping Cart
@endsection


@section('header')


    @include('header.header')
@endsection




@section('content')

    <style>
        input:not([type]), input[type=text], input[type=password], input[type=email], input[type=url], input[type=time], input[type=date], input[type=datetime], input[type=datetime-local], input[type=tel], input[type=number], input[type=search], textarea.materialize-textarea {
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #9e9e9e;
            border-radius: 0;
            outline: none;
            height: 3rem;
            width: 100%;
            font-size: inherit;
            margin: 0 0 20px 0;
            padding: 0;
            box-shadow: none;
            box-sizing: content-box;
            transition: all 0.3s;
        }

        input {
            line-height: normal;
        }

        button, input, optgroup, select, textarea {
            color: inherit;
            font: inherit;
            margin: 0;
        }


        .input-field label:not(.label-icon).active {
            font-size: 14px;
            -webkit-transform: translateY(-140%);
            transform: translateY(-140%);
        }

        input:not([type]).validate+label, input[type=text].validate+label, input[type=password].validate+label, input[type=email].validate+label, input[type=url].validate+label, input[type=time].validate+label, input[type=date].validate+label, input[type=datetime].validate+label, input[type=datetime-local].validate+label, input[type=tel].validate+label, input[type=number].validate+label, input[type=search].validate+label, textarea.materialize-textarea.validate+label {
            width: 100%;
            pointer-events: none;
        }

        .input-field.col label {
            left: .75rem;
        }

        .input-field label {
            color: #9e9e9e;
            position: absolute;
            top: 5px !important;
            left: 0;
            font-size: inherit;
            cursor: text;
            transition: .2s ease-out;
            text-align: initial;
        }

        label {
            font-size: 14px;
            color: #9e9e9e;
        }

        input:not([type])+label:after, input[type=text]+label:after, input[type=password]+label:after, input[type=email]+label:after, input[type=url]+label:after, input[type=time]+label:after, input[type=date]+label:after, input[type=datetime]+label:after, input[type=datetime-local]+label:after, input[type=tel]+label:after, input[type=number]+label:after, input[type=search]+label:after, textarea.materialize-textarea+label:after {
            display: block;
            content: "";
            position: absolute;
            top: 60px;
            opacity: 0;
            transition: .2s opacity ease-out, .2s color ease-out;
        }
         *, *:before, *:after {
            box-sizing: inherit;
        }

        .row .col.s6 {
            width: 50%;
            margin-left: auto;
            left: auto;
            right: auto;
        }
         .row .col {
            float: left;
            box-sizing: border-box;
            padding: 0 .75rem;
            min-height: 1px;
        }
         .input-field {
            position: relative;
            margin-top: inherit;
        }
         *, *:before, *:after {
            box-sizing: inherit;
        }

        .row {
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 20px;
        }
        input:not([type]), input[type=text], input[type=password], input[type=email], input[type=url], input[type=time], input[type=date], input[type=datetime], input[type=datetime-local], input[type=tel], input[type=number], input[type=search], textarea.materialize-textarea {
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #9e9e9e;
            border-radius: 0;
            outline: none;
            height: 3rem;
            width: 100%;
            font-size: inherit;
            margin: 0 0 20px 0;
            padding: 0;
            box-shadow: none;
            box-sizing: content-box;
            transition: all 0.3s;
        }
        .input-field label:not(.label-icon).active {
            font-size: 14px;
            -webkit-transform: translateY(-140%);
            transform: translateY(-140%);
        }


        input:not([type]).invalid, input:not([type]):focus.invalid, input[type=text].invalid, input[type=text]:focus.invalid, input[type=password].invalid, input[type=password]:focus.invalid, input[type=email].invalid, input[type=email]:focus.invalid, input[type=url].invalid, input[type=url]:focus.invalid, input[type=time].invalid, input[type=time]:focus.invalid, input[type=date].invalid, input[type=date]:focus.invalid, input[type=datetime].invalid, input[type=datetime]:focus.invalid, input[type=datetime-local].invalid, input[type=datetime-local]:focus.invalid, input[type=tel].invalid, input[type=tel]:focus.invalid, input[type=number].invalid, input[type=number]:focus.invalid, input[type=search].invalid, input[type=search]:focus.invalid, textarea.materialize-textarea.invalid, textarea.materialize-textarea:focus.invalid {
            border-bottom: 1px solid #F44336;
            box-shadow: 0 1px 0 0 #F44336;
        }
         input:not([type]), input[type=text], input[type=password], input[type=email], input[type=url], input[type=time], input[type=date], input[type=datetime], input[type=datetime-local], input[type=tel], input[type=number], input[type=search], textarea.materialize-textarea {
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #9e9e9e;
            border-radius: 0;
            outline: none;
            height: 3rem;
            width: 100%;
            font-size: inherit;
            margin: 0 0 20px 0;
            padding: 0;
            box-shadow: none;
            box-sizing: content-box;
            transition: all 0.3s;
        }

        input:not([type]).valid, input:not([type]):focus.valid, input[type=text].valid, input[type=text]:focus.valid, input[type=password].valid, input[type=password]:focus.valid, input[type=email].valid, input[type=email]:focus.valid, input[type=url].valid, input[type=url]:focus.valid, input[type=time].valid, input[type=time]:focus.valid, input[type=date].valid, input[type=date]:focus.valid, input[type=datetime].valid, input[type=datetime]:focus.valid, input[type=datetime-local].valid, input[type=datetime-local]:focus.valid, input[type=tel].valid, input[type=tel]:focus.valid, input[type=number].valid, input[type=number]:focus.valid, input[type=search].valid, input[type=search]:focus.valid, textarea.materialize-textarea.valid, textarea.materialize-textarea:focus.valid {
            border-bottom: 1px solid #4CAF50;
            box-shadow: 0 1px 0 0 #4CAF50;
        }

         input {
            line-height: normal;
        }
         button, input, optgroup, select, textarea {
            color: inherit;
            font: inherit;
            margin: 0;
        }
        .row {
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 20px;
        }


        .row .col.s12 {
            width: 100%;
            margin-left: auto;
            left: auto;
            right: auto;
        }
         .row .col {
            float: left;
            box-sizing: border-box;
            padding: 0 .75rem;
            min-height: 1px;
        }

         .input-field {
            position: relative;
            margin-top: inherit;
        }


        input:not([type]):disabled, input:not([type])[readonly="readonly"], input[type=text]:disabled, input[type=text][readonly="readonly"], input[type=password]:disabled, input[type=password][readonly="readonly"], input[type=email]:disabled, input[type=email][readonly="readonly"], input[type=url]:disabled, input[type=url][readonly="readonly"], input[type=time]:disabled, input[type=time][readonly="readonly"], input[type=date]:disabled, input[type=date][readonly="readonly"], input[type=datetime]:disabled, input[type=datetime][readonly="readonly"], input[type=datetime-local]:disabled, input[type=datetime-local][readonly="readonly"], input[type=tel]:disabled, input[type=tel][readonly="readonly"], input[type=number]:disabled, input[type=number][readonly="readonly"], input[type=search]:disabled, input[type=search][readonly="readonly"], textarea.materialize-textarea:disabled, textarea.materialize-textarea[readonly="readonly"] {
            color: rgba(0,0,0,0.26);
            border-bottom: 1px dotted rgba(0,0,0,0.26);
        }

        .material-row{
        line-height: 1.5;
        font-family: "Roboto", sans-serif;}

        .input-field.inline {
            display: inline-block;
            vertical-align: middle;
            margin-left: 5px;
        }
         .input-field {
            position: relative;
            margin-top: 1rem;
        }
        .material-row .row{
        margin-bottom: 0px;
        }
    </style>

    <!-- Compiled and minified CSS -->
    {{--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">--}}

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>



    <div class="row material-row">
        <div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
            <h1>Оформление заказа</h1>
            <h4>Итоговая стоимость: {{$total}}</h4>

            <form action="{{route('checkout')}}" method="POST" id="checkout-form">

                <div class="row">
                    <form class="col s12">
                        <div class="row">
                             <input type="hidden" name="total" value="{{$total}}" />
                            <div class="input-field col s6">
                                <input placeholder="Placeholder"   name="first_name" id="first_name" type="text" class="validate">
                                <label for="first_name">First Name</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="last_name"  name="last_name" type="text" class="validate">
                                <label for="last_name">Last Name</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input disabled value="I am not editable" id="disabled" type="text" class="validate">
                                <label for="disabled">Disabled</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input id="password" type="password" class="validate">
                                <label for="password">Password</label>
                            </div>

                            <div class="input-field col s6">
                                <input id="phone" name="phone" type="text"  >
                                <label for="phone">Phone</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="email" type="email" class="validate">
                                <label for="email">Email</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="info" type="text" name="info" class="validate">
                                <label for="info">Info</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12">
                                This is an inline input field:
                                <div class="input-field inline">
                                    <input id="email" name="email" type="email" class="validate">
                                    <label for="email" data-error="wrong" data-success="right">Email</label>
                                </div>
                            </div>
                        </div>
                        {{csrf_field()}}
                        <button type="submit" class="btn btn-success">Отправить заказ</button>

                    </form>
                </div>



            </form>

        </div>
    </div>


@endsection