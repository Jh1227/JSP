
<!-- 02_forward/bloodForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bloodForm.jsp</title>
<!-- 
    각 혈액형에 대한 페이지를 추가하고, 'bloodResult.jsp' 에서 
	선택한 혈액형의 페이지가 나오도록 구현하세요
-->
</head>
<body>
	<h1>혈액형별 성격</h1>
	<p>혈액형을 선택하세요</p>
	<form action="bloodResult.jsp" method="post">
		<input type="radio" name="bloodType" value="A"> A형
		<br>
		<input type="radio" name="bloodType" value="B"> B형
		<br>
		<input type="radio" name="bloodType" value="O"> O형
		<br>
		<input type="radio" name="bloodType" value="AB"> AB형
		<br><br>
		<input type="submit" value="확인">
	</form>
</body>
</html>




























