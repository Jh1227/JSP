
<!-- ex01_request.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_request.jsp</title>
</head>
<body>
	<h1>정보 입력</h1>
	<br>
	<form action="ex01_requestPro.jsp" method="post" autocomplete="off">
		학 번 : <input type="text" name="stuNumber">
		<br><br>
		이 름 : <input type="text" name="name">
		<br><br>
		학 년 : <input type="radio" name="grade" value="1학년"> 1학년
				<input type="radio" name="grade" value="2학년"> 2학년
				<input type="radio" name="grade" value="3학년"> 3학년
				<input type="radio" name="grade" value="4학년"> 4학년
		<br><br>
		과 목 : <select name="subject">
					<option value="java"> Java </option>
					<option value="jsp"> JSP </option>
					<option value="spring"> Spring </option>
		        </select>
		<br><br>
		<input type="submit" value="입력 완료">
	</form>
</body>
</html>

