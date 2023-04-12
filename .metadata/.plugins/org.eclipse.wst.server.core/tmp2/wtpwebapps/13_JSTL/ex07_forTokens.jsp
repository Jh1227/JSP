
<!-- ex07_forTokens.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07_forTokens.jsp</title>
</head>
<body>
	<h1>forTokens</h1>
	<%--
		# 토큰( token )
		- 문법적으로 의미있는 최소단위 입니다
		- 여기서는 문자열을 구분하는 구분자로 분리되는 문자열의 구성 요소입니다
		
		# <c:forTokens> : Java 의 StringTokenizer 클래스와 동일합니다
		- <c:forTokens var ="변수명" items ="문자열" delims ="문자열 구분자"/>
	--%>
	<%
		String colors = "red,green,blue,orange,black";
	%>
	<c:forTokens var ="stn" items ="<%=colors %>" delims =",">
		<span style ="color:${stn };"> ${stn } </span>
	</c:forTokens>
</body>
</html>