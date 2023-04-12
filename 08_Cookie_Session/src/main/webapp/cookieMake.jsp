
<!-- cookieMake.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cookieName = "ckTest";
	String cookieValue = "testCookies";
	Cookie myCookie = new Cookie(cookieName, cookieValue); // 쿠키 생성
	myCookie.setMaxAge(3); // 쿠키 지속 시간 : 초단위로 지정( 0 : 즉시 삭제, -1 : 브라우저 종료시 삭제 )
	response.addCookie(myCookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieMake.jsp</title>
</head>
<body>
	<h1>쿠키 생성 페이지</h1>
	<br>
	<p><%=cookieName %> 쿠키가 생성 되었습니다!!!</p>
	<br>
	<form action="cookieUse.jsp" method ="post">
		<input type ="submit" value ="확인">
	</form>
</body>
</html>