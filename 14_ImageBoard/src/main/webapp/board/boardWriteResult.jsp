
<!-- board/boardWriteResult -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWriteResult</title>
</head>
<body>
	<br>
	<c:if test="${res != 0 }">
		<p>작성하신 글이 등록 되었습니다!</p>
	</c:if>
	<c:if test="${res == 0 }">
		<p>등록 실패..</p>
	</c:if>
	<br>
	<button onclick ="location.href='../board/boardList.jsp?pg=1'"> 글목록 </button>
</body>
</html>