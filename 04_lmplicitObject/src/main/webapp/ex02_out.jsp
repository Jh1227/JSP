
<!-- ex02_out.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_out.jsp</title>
</head>
<body>
	<h1>out 내장 객체</h1>
	<p>
	<%
		String message = "건강 관리 잘하세요..";
		out.println(message);
	%>
	</p>
	<p>표현식을 사용한것과 동일한 결과입니다</p>
	<p><%=message %></p>
</body>
</html>






















