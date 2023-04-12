
<!-- 03_javabeans/personPro.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>
<jsp:useBean id ="manA" class ="com.test.PersonDTO">
	<jsp:setProperty name ="manA" property ="name" value ="<%=name %>"/>
	<jsp:setProperty name ="manA" property ="age" value ="<%=age %>"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>personPro.jsp</title>
</head>
<body>
	<h1>person</h1>
	<br>
	<p>manA 이름 : <jsp:getProperty name ="manA" property ="name"/></p>
	<p>manA 나이 : <jsp:getProperty name ="manA" property ="age"/></p>
</body>
</html>