<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h3>Создан заказ #{{$data['id']}}.</h3>
<p> Сумма заказа:<br>
 {{$data['total']}}</p>

<hr>
{{config('mail.from')['name']}}<br>
{{config('mail.from')['address']}}


</body>
</html>







