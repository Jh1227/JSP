
<!-- member/loginOk.jsp -->

<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<img src ="../image/home.jpg" onclick ="location.href='../main/index.jsp'">
	<br>
	<h2>${sessionScope.memberName }님 안녕하세요!! ^-^</h2>
	<br>
	<input type ="button" value ="Main" onclick ="location.href='../main/index.jsp'"> 
</body>
</html>