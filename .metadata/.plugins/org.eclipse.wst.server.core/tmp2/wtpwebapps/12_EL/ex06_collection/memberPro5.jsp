
<!-- ex06_collection/memberPro5.jsp -->

<%@page import="bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id ="mbA" class ="bean.MemberBean"/>
<jsp:setProperty name ="mbA" property ="*"/>
<jsp:useBean id ="list" class ="java.util.ArrayList" type ="java.util.ArrayList<bean.MemberBean>"/> 
<%
	MemberBean mbB = new MemberBean("son", "1234", "손흥민", "son@test.com");
	list.add(mbA);
	list.add(mbB);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberPro5.jsp</title>
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
			<td>${list[0].id }</td>
			<td>${list[0].pwd }</td>
			<td>${list[0].name }</td>
			<td>${list[0].email }</td>
		</tr>
		<tr>
			<td>${list[1].id }</td>
			<td>${list[1].pwd }</td>
			<td>${list[1].name }</td>
			<td>${list[1].email }</td>
		</tr>
	</table>
</body>
</html>