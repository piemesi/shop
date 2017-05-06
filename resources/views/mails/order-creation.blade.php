<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h3>Добрый день!</h3>
<p>Благодарим за создание заказа #{{$data['id']}}.<br>
В ближайшее время мы свяжемся с Вами.</p>

<hr>
{{config('mail.from')['name']}}<br>
{{config('mail.from')['address']}}


</body>
</html>