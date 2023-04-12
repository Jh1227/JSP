
<!-- ex06.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06.jsp</title>
</head>
<body>
	<h1>전화번호 입력</h1>
	<br>
	<form action="ex06Pro.jsp" method ="post">
		<label>이 름 : </label><input type ="text" name ="name">
		<br><br>
		<label>통신사</label>
		<select name ="telecom">
			<option value ="skt">SKT</option>
			<option value ="kt">KT</option>
			<option value ="lg">U+</option>
		</select>
		<br><br>
		<label>전화번호 : </label><input type ="tel" name="tel">
		<br><br>
		<input type ="submit" value ="제출"> &nbsp; <input type ="reset" value ="다시 작성">
	</form>
</body>
</html>