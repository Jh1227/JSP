
<!-- ex02_param/01_form.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_form.jsp</title>
</head>
<body>
	<h1>param form</h1>
	<br>
	<form action="01_formRes.jsp">
		데이터 1 : <input type ="number" name ="data_1">
		<br><br>
		데이터 2 : <input type ="number" name ="data_2">
		<br><br>
		<input type ="submit" value ="확인">
	</form>
</body>
</html>