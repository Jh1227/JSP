
<!-- ex04.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<h1>이름, 나이를 입력하세요</h1>
	<br>
	<form method ="post" action="ex04Pro.jsp">
		<label>이름 : </label>
		<input type ="text" name ="name">
		<br><br>
		<label>나이 : </label>
		<input type ="text" name ="age">
		<br><br>
		<input type ="submit" name ="완료">
	</form>
</body>
</html>