
<!-- ex08.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int dan = 5;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex08.jsp</title>
</head>
<body>
	<h1><%=dan %> 단</h1>
	<div>
		<%for(int i = 1; i <= 9; i++) { %>
			<p><%=dan %> * <%=i %> = <%=dan*i %></p>
		<%} %>
	</div>
</body>
</html>