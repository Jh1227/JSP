
<!-- ex02_param/01_formRes.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_formRes.jsp</title>
</head>
<body>
	<h1>결과</h1>
	<br>
	<h2>
		데이터 1 : ${ param.data_1 }<br>
		데이터 2 : ${ param.data_2 }<br>
		<br>
		${ param.data_1 } + ${ param.data_2 } = ${ param.data_1 + param.data_2 }<br>
		${ param.data_1 } - ${ param.data_2 } = ${ param.data_1 - param.data_2 }<br>
		${ param.data_1 } * ${ param.data_2 } = ${ param.data_1 * param.data_2 }<br>
		${ param.data_1 } / ${ param.data_2 } = ${ param.data_1 / param.data_2 }<br>
		${ param.data_1 } % ${ param.data_2 } = ${ param.data_1 % param.data_2 }<br>
		<br>
		${ param.data_1 } > ${ param.data_2 } -> ${ param.data_1 gt param.data_2 }<br>
		${ param.data_1 } < ${ param.data_2 } -> ${ param.data_1 lt param.data_2 }<br>
		${ param.data_1 } == ${ param.data_2 } -> ${ param.data_1 eq param.data_2 }<br>
		<br>
	</h2>
</body>
</html>