
<!-- ex09_redirect.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex09_redirect.jsp</title>
</head>
<body>
	<h1>redirect</h1>
	<%--
		# <c:redirect> : response 객체의 sendRedirect() 와 동일합니다
		- <c:redirect url="이동할 경로 or URL"/>
		  * 매개변수를 전달할 때에는 <c:import> 태그와 동일하게 <c:param> 태그를 사용합니다
	--%>
	<c:redirect url ="ex09_result.jsp">
		<c:param name ="data" value ="ex09_result.jsp 가 보낸 데이터"/>
	</c:redirect>
</body>
</html>