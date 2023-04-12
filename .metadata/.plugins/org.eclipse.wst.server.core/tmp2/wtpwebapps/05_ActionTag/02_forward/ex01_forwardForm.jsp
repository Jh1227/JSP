
<!-- ex02_forward/ex01_forwardForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_forwardForm.jsp</title>
</head>
<body>
	<h1>forwardForm</h1>
	<br>
	<form action="ex01_forwardTest.jsp" method="post">
		아이디 : <input type="text" name="id">
		<br><br>
		취  미 : <select name="hobby">
		         	<option value="game"> 게임 </option>
		         	<option value="study"> 공부 </option>
		         	<option value="music"> 음악감상 </option>
		         </select>
		<br><br>
		<input type="submit" value="완료">
	</form>
</body>
</html>






















