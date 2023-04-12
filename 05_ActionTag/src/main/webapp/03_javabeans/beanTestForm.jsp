
<!-- 03_javabeans/beanTestForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanTestForm.jsp</title>
</head>
<body>
	<h1>이름을 입력하세요</h1>
	<br>
	<form action ="beanTestPro.jsp" method ="post">
		이름 : <input type ="text" name ="name">
		<br><br>
		<input type ="submit" value ="전송">
	</form>
</body>
</html>