
<!-- ex01_requestPro.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String stuNumber = request.getParameter("stuNumber");
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String subject = request.getParameter("subject");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_requestPro.jsp</title>
<style type="text/css">
table {
	width: 300px;
}
</style>
</head>
<body>
	<h1>입력 정보</h1>
	<table border="1">
		<tr>
			<th> 학 번 </th><td><%=stuNumber %></td>
		</tr>
		<tr>
			<th> 이 름 </th><td><%=name %></td>
		</tr>
		<tr>
			<th> 학 년 </th><td><%=grade %></td>
		</tr>
		<tr>
			<th> 과 목 </th><td><%=subject %></td>
		</tr>
	</table>
	<hr>
	<h2>request 정보</h2>
	<p>클라이언트 IP : <%=request.getRemoteAddr() %></p>
	<p>인코딩 방식 : <%=request.getCharacterEncoding() %></p>
	<p>서버 이름 : <%=request.getServerName() %></p>
</body>
</html>


































