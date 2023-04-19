
<!-- imageboard/imageboardDeleteResult.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imageboardDeleteResult.jsp</title>
</head>
<body>
	<br>
	<c:if test="${su > 0 }">
		<p>삭제 되었습니다^^</p>
	</c:if>
	<c:if test="${su == 0 }">
		<p>삭제 실패...</p>
	</c:if>
	<br>
	<button onclick ="location.href='../imageboard/imageboardList.jsp?pg=${pg}'"> 상품 목록 </button>
</body>
</html>