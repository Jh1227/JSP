
<!-- index.jsp -->

<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// cookie 값 사용
	String id = null;
	String name = null;
	
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("memberId")){
				id = cookies[i].getValue();
			} else if(cookies[i].getName().equals("memberName")){
				name = URLEncoder.encode(cookies[i].getValue(), "utf-8");
			} 
		}  
	}
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
	<%} %>
</body>
</html>