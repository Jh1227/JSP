
<!-- 03_javabeans/personForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>personForm.jsp</title>
<!-- 
	# 아래의 입력값을 사용해서 'personPro.jsp' 에서 personDTO class 객체를 생성하세요
	- package : com.test
	- jsp 액션 태그를 사용합니다
-->
</head>
<body>
	<h1>정보 입력</h1>
	<form action ="personPro.jsp" method ="post">
		이 름 : <input type ="text" name ="name">
		<br><br>
		나 이 : <input type ="text" name ="age">
		<br><br>
		<input type ="submit" value ="전송">
	</form>
</body>
</html>