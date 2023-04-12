
<!-- ex05.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.js</title>
</head>
<body>
	<h1>성적 입력</h1>
	<br>
	<form method ="post" action ="ex05Pro.jsp">
		이 름 : <input type ="text" name ="name"><br><br>
		국 어 : <input type ="text" name ="kor"><br><br>
		영 어 : <input type ="text" name ="eng"><br><br>
		수 학 : <input type ="text" name ="math"><br><br>
		<br>
		<input type ="submit" value ="확인">
	</form>
</body>
</html>