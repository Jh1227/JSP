
<!-- ex02_param/memberPro.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberPro.jsp</title>
<style type="text/css">
table, th, td { border: 1px solid gray; border-collapse: collapse; padding: 4px; }
th, td { width: 120px; text-align: center; }
</style>
</head>
<body>
	<h1>결 과</h1>
	<br>
	<table>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>
		<tr>
			<td>${param.id }</td>
			<td>${param.pwd }</td>
			<td>${param.name }</td>
			<td>${param.email }</td>
		</tr>
	</table>
</body>
</html>