
<!-- ex02_param/02_form.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_form.jsp</title>
</head>
<body>
	<h1>param form2</h1>
	<br>
	<form action="02_formRes.jsp" method ="post">
		<h3>과목을 선택하세요</h3>
		<input type ="checkbox" name ="subject" value ="c"> C <br>
		<input type ="checkbox" name ="subject" value ="java"> Java <br>
		<input type ="checkbox" name ="subject" value ="python"> Python <br>
		<input type ="checkbox" name ="subject" value ="jsp"> JSP <br>
		<input type ="checkbox" name ="subject" value ="spring"> Spring <br>
		<br>
		<input type ="submit" value ="확인">
	</form>
</body>
</html>