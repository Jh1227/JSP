
<!-- ex07.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07.jsp</title>
</head>
<body>
	<h1>간단 계산기</h1>
	<br>
	<form action="ex07Pro.jsp" method ="post">
		<input type ="text" name ="dataA">
		<select name ="opt">
			<option value ="+"> + </option>
			<option value ="-"> - </option>
			<option value ="*"> * </option>
			<option value ="/"> / </option>
		</select>
		<input type ="text" name ="dataB">
		<br><br>
		<input type ="submit" value ="계산">
	</form>
</body>
</html>