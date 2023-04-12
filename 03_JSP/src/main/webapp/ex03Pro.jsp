
<!-- ex03Pro.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//String n1 = request.getParameter("n1");
	//int data1 = Integer.parseInt(n1);
	
	int data1 = Integer.parseInt(request.getParameter("n1"));
	int data2 = Integer.parseInt(request.getParameter("n2"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
<style type="text/css">
p { font-size: 24px; }
</style>
</head>
<body>
	<h1>계산 결과</h1>
	<br>
	<p><%=data1 %> + <%=data2 %> = <%=data1+data2 %></p>
</body>
</html>