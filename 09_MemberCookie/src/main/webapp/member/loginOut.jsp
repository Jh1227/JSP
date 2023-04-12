
<!-- member/loginOut.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// Cookie 삭제
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("memberId")){
				cookies[i].setMaxAge(0);
				cookies[i].setPath("/");
				response.addCookie(cookies[i]);
			} else if(cookies[i].getName().equals("memberName")){
				cookies[i].setMaxAge(0);
				cookies[i].setPath("/");
				response.addCookie(cookies[i]);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOut.jsp</title>
</head>
<body>
	<h1>로그아웃</h1>
	<br>
	<input type ="button" value ="Main" onclick ="location.href='../index.jsp'">
</body>
</html>