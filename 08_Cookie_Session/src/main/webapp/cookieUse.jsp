
<!-- cookieUse.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String myCookie = null;
	String myValue = null;
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("ckTest")){
				myCookie = cookies[i].getName();
				myValue = cookies[i].getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieUse.jsp</title>
</head>
<body>
	<h1>쿠키 확인</h1>
	<br>
	<p>쿠키 이름 : <%=myCookie %></p>
	<p>쿠키 값 : <%=myValue %></p>
</body>
</html>