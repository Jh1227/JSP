
<!-- 02_forward/ex01_forwardTo.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String hobby = request.getParameter("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_forwardTo.jsp</title>
</head>
<body>
	<h1>forwardTo</h1>
	<br>
	<p>포워딩되는 페이지 ex01_forwardTo.jsp 입니다</p>
	<p><strong><%=id %></strong>님의 취미 : <%=hobby %></p>
</body>
</html>























