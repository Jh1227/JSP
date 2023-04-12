
<!-- member/loginOk.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk.jsp</title>
<style type="text/css">
img { width: 300px; height: 200px; cursor: pointer; }
</style>
</head>
<body>
	<img src ="../image/home.jpg" onclick ="location.href='/07_Member/index.jsp'">
	<br>
	<h2>ID : <%=id %> - 이름 : <%=name %>님 안녕하세요!! ^-^</h2>
	<br>
	<input type ="button" value ="Main" onclick ="location.href='/07_Member/index.jsp'">
</body>
</html>