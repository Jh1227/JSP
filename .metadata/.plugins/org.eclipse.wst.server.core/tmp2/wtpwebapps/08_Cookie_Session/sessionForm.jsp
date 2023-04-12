
<!-- sessionForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionForm.jsp</title>
</head>
<body>
	<h1>session Form</h1>
	<br>
	<form action="sessionPro.jsp" method ="post">
		아이디 : <input type ="text" name ="id">
		<br><br>
		비밀 번호 : <input type ="password" name ="pwd">
		<br><br>
		<input type ="submit" value ="확인">
	</form>
</body>
</html>