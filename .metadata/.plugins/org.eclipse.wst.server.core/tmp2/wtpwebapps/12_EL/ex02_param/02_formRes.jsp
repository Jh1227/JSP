
<!-- ex02_param/02_formRes.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_formRes.jsp</title>
</head>
<body>
	<h1>과목 확인</h1>
	<br>
	<h2>
		param.subject : ${ param.subject } <br><br>
		paramValues.subject[0] : ${ paramValues.subject[0] } <br>
		paramValues.subject[1] : ${ paramValues.subject[1] } <br>
		paramValues.subject[2] : ${ paramValues.subject[2] } <br>
		paramValues.subject[3] : ${ paramValues.subject[3] } <br>
		paramValues.subject[4] : ${ paramValues.subject[4] } <br>
	</h2>
</body>
</html>