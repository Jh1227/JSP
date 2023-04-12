
<!-- member/loginOk.jsp -->

<%@page import="java.net.URLEncoder"%>
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
<title>loginOk.jsp</title>
<style type="text/css">
img { width: 300px; height: 200px; cursor: pointer; }
</style>
</head>
<body>
	<img src ="../image/home.jpg" onclick ="location.href='../index.jsp'">
	<br>
	<h2>ID : <%=id %> - 이름 : <%=name %>님 안녕하세요!! ^-^</h2>
	<br>
	<input type ="button" value ="Main" onclick ="location.href='../index.jsp'">
</body>
</html>