
<!-- ex03.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계 산</title>
<style type="text/css">
input[type=text] { width: 100px; height: 24px; font-size: 22px; }
</style>
</head>
<body>
	<h1>숫자를 입력하세요</h1>
	<br>
	<form method ="get" action ="ex03Pro.jsp">
		<input type ="text" name ="n1"> + <input type ="text" name ="n2">
		<br><br>
		<input type ="submit" value ="입력 완료"> &nbsp; <input type ="reset" value ="다시 작성">
	</form>
</body>
</html>