
<!-- member/loginOk.jsp -->

<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// session 값 사용
	String id = (String)session.getAttribute("memberId");
	String name = (String)session.getAttribute("memberName");
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
	<img src ="../image/home.jpg" onclick ="location.href='../index.jsp'">
	<br>
	<h2>ID : <%=id %> - 이름 : <%=name %>님 안녕하세요!! ^-^</h2>
	<br>
	<input type ="button" value ="Main" onclick ="location.href='../index.jsp'">
</body>
</html>