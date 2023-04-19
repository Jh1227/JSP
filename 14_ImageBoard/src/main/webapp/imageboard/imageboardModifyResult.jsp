
<!-- imageboard/imageboardModifyResult.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imageboardModifyResult.jsp</title>
</head>
<body>
	<c:if test="${su > 0 }">
		<p>${imageName } 수정 되었습니다!</p>
	</c:if>
	<c:if test="${su == 0 }">
		<p>수정 실패...</p>
	</c:if>
	<br>
	<button onclick="location.href='imageboardList.jsp?pg=${pg}'">목 록</button>
</body>
</html>