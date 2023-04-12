
<!-- 01_include/ex01_includeForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_includeForm.jsp</title>
</head>
<body>
	<h1>include</h1>
	<form action="ex01_include.jsp" method="post">
		이 름 : <input type="text" name="name">
		<br><br>
		페이지 이름 : <input type="text" name="pageName" value="ex01_includeTest">
		<br><br>
		<input type="submit" value="완료">	
	</form>
</body>
</html>





























