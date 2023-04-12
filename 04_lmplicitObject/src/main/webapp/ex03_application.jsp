
<!-- ex03_application.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_application.jsp</title>
</head>
<body>
	<h1>application 내장 객체</h1>
	<%
		String info = application.getServerInfo();
		String path = application.getRealPath("/");
	%>
	<p>웹 컨테이너의 이름, 버전 : <%=info %></p>
	<p>웹 어플리케이션 폴더의 경로 : <%=path %></p>
</body>
</html>



























