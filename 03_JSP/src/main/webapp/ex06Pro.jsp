
<!-- ex06Pro.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String telecom = request.getParameter("telecom");
	String tel = request.getParameter("tel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06Pro.jsp</title>
<style type="text/css">
p { font-size: 24px; }
</style>
</head>
<body>
	<h1>확인</h1>
	<p><%=name %>님의 전화번호 : <%=tel %></p>
	<p>통신사 : <%=telecom %></p>
</body>
</html>