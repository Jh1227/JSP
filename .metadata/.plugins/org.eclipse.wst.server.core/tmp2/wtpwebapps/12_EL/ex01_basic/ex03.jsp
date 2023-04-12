
<!-- ex01_basic/ex03.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<h1>비교 연산자</h1>
	<br>
	<h2>
		\${10 == 10 } : ${10 == 10 }<br>
		\${10 eq 10 } : ${10 eq 10 }<br>
		\${"hi" == "hi" } : ${"hi" == "hi" }<br>
		\${"hi" eq "hi" } : ${"hi" eq "hi" }<br>
		<br>
		\${10 != 10 } : ${10 != 10 }<br>
		\${10 ne 10 } : ${10 ne 10 }<br>
		\${"hi" != "hi" } : ${"hi" != "hi" }<br>
		\${"hi" ne "hi" } : ${"hi" ne "hi" }<br>
		<br>
		\${10 > 10 } : ${10 > 10 }<br>
		\${10 gt 10 } : ${10 gt 10 }<br>
		\${10 < 11 } : ${10 < 11 }<br>
		\${10 lt 11 } : ${10 lt 11 }<br>
		<br>
		\${10 >= 10 } : ${10 >= 10 }<br>
		\${10 ge 10 } : ${10 ge 10 }<br>
		\${10 <= 11 } : ${10 <= 11 }<br>
		\${10 le 11 } : ${10 le 11 }<br>
	</h2>
</body>
</html>