
<!-- ex01_basic/ex01.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>표현 언어로 데이터 출력</h1>
	<br>
	<h2>
		\${100 } : ${100 }<br>
		\${"EL" } : ${"EL" }<br>
		\${100+2 } : ${100+2 }<br>
		\${"10"+2 } : ${"10"+2 }<br> <!-- 숫자로된 문자열과 숫자를 더하면 문자열이 자동으로 숫자로 변환됩니다 -->
		\${null+2 } : ${null+2 }<br> <!-- null 은  0 입니다 -->
		<%-- ${"십"+2 } --%> <%-- 문자열과 숫자를 더할 수 없습니다 --%>
		<%-- ${"십"+"이" } --%> <%-- 문자열끼리 더할 수 없습니다 --%>
	</h2>
</body>
</html>