
<!-- member/writeResult.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeResult.jsp</title>
</head>
<body>
	<br>
	<c:if test="${res != 0 }">
		<p>회원가입 성공!!</p>
	</c:if>
	<c:if test="${res == 0 }">
		<p>회원가입 실패..</p>
	</c:if>
	<br>
	<a href="../main/index.jsp"> Main </a>
</body>
</html>