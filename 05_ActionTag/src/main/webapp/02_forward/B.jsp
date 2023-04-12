
<!-- 02_forward/B.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String bloodType = request.getParameter("bloodType");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>B.jsp</title>
</head>
<body>
	<h1><%=bloodType %> 형</h1>
	<p><strong><%=name %></strong>님 혈액형 : <%=bloodType %></p>
</body>
</html>