
<!-- board/boardModifyResult.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardModifyResult.jsp</title>
</head>
<body>
	<br>
	<c:if test="${su > 0 }">
		<p>수정 되었습니다!</p>
	</c:if>
	<c:if test="${su == 0 }">
		<p>수정 실패...</p>
	</c:if>
	<br>
	<button onclick="location.href='../board/boardList.jsp?pg=${pg}'">수정 확인</button>
</body>
</html>