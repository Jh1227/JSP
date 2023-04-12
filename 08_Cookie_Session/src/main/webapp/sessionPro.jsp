
<!-- sessionPro.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	session.setAttribute("userid", id);
	session.setAttribute("userpw", pwd);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionPro.jsp</title>
</head>
<body>
	<h1>session 설정 및 사용</h1>
	<br>
	<p>ID = <%=(String)session.getAttribute("userid") %></p>
	<p>PW = <%=(String)session.getAttribute("userpw") %></p>
</body>
</html>