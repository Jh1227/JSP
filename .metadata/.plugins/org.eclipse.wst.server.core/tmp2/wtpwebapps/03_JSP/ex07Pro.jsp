
<!-- ex07Pro.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	double dataA = Double.parseDouble(request.getParameter("dataA"));
	double dataB = Double.parseDouble(request.getParameter("dataB"));
	
	String opt = request.getParameter("opt");
	double result = 0;
	
	if(opt.equals("+")){
		result = dataA + dataB;
	}
	if(opt.equals("-")){
		result = dataA - dataB;
	}
	if(opt.equals("*")){
		result = dataA * dataB;
	}
	if(opt.equals("/")){
		result = dataA / dataB;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07Pro.jsp</title>
</head>
<body>
	<h1>결 과</h1>
	<br>
	<p><%=dataA %> <%=opt %> <%=dataB %> = <%=result %></p>
</body>
</html>