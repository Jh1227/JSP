
<!-- index.jsp -->

<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// session값 사용
	String id = (String)session.getAttribute("memberId");
	String name = (String)session.getAttribute("memberName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
	<h1>index</h1>
	<br>
	<p>id : <%=id %> - name : <%=name %></p>
	<%if(id == null) {%>
		<a href ="member/writeForm.jsp"> 회원가입 </a>
		<br><br>
		<a href ="member/loginForm.jsp"> 로그인 </a>
	<%} else {%>
		<a href ="member/loginOut.jsp"> 로그아웃 </a>
		<br><br>
		<a href ="member/modifyForm.jsp"> 회원정보 수정 </a>
		<br><br>
		<a href ="board/boardWriteForm.jsp"> 글쓰기 </a>
	<%} %>
</body>
</html>