
<!-- ex01_basic/ex04.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<h1>논리 연산자</h1>
	<br>
	<h2>
		\${(10 == 10) && (20 == 20) } : ${(10 == 10) && (20 == 20) }<br>  
		\${(10 == 10) and (20 == 20) } : ${(10 == 10) and (20 == 20) }<br>
		<br>
		\${(10 == 10) || (20 == 20) } : ${(10 == 10) || (20 == 20) }<br>  
		\${(10 == 10) or (20 == 20) } : ${(10 == 10) or (20 == 20) }<br>
		<br>  
		\${!(10 == 10) } : ${!(10 == 10) }<br>
		\${not(10 == 10) } : ${not(10 == 10) }<br>
	</h2>
</body>
</html>