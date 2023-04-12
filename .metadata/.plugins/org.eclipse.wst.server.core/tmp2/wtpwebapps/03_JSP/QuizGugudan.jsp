
<!-- QuizGugudan.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	int i;
	int j;
	int k;
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuizGugudan.jsp</title>
</head>
<body>
	<h1>구구단</h1>
	<table border=1>
	<tr>
	<% for(i=2; i<=9; i++) {%>
	<td><%=i %>단</td>
	<%} %>
	</tr>
	<% for(j=1; j<10; j++) { %>
	<tr>
		<% for(k=2; k<10; k++){ %>
		<td><%=k %> X <%=j %> = <%=k*j %></td>
		<%} %>
	</tr>
	<%} %>
	</table>
</body>
</html>