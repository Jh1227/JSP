
<!-- ex06_form.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06_form.jsp</title>
<!-- 
	# 체크된 항목의 국가를 'ex06_forEach.jsp' 에서 출력하세요
	  - 전체 항목수는 5개 이상
	  
	# 출력한 단 값을 입력받고, 해당 단의 값을 'ex06_forEach.jsp' 에서 출력하세요
-->
</head>
<body>
	<h1>국가 선택</h1>
	<form action="ex06_forEach.jsp">
		<input type ="checkbox" name ="country" value ="한국"> 한국
		<input type ="checkbox" name ="country" value ="중국"> 중국
		<input type ="checkbox" name ="country" value ="일본"> 일본
		<input type ="checkbox" name ="country" value ="미국"> 미국
		<input type ="checkbox" name ="country" value ="영국"> 영국
		<br><br>
		<input type ="submit" value ="확인">
	</form>
	
	<h1>구구단 입력</h1>
	<form action="ex06_forEach.jsp">
		단 입력 : <input type ="text" name ="dan">
		<br><br>
		<input type ="submit" value ="확인">
	</form>
</body>
</html>