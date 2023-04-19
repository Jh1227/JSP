
<!-- board/boardViewResult.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardViewResult.jsp</title>
<style type="text/css">
h1 { text-align: center; }
table, th, td { border: 1px solid black; border-collapse: collapse; }
tr { text-align: center; }
</style>
</head>
<body>
	<h1>글보기</h1>
	<br>
	<table>
		<tr>
			<td colspan ="3">${boardDTO.subject }</td>
		</tr>
		<tr>
			<td width ="300px"> 글번호 : ${boardDTO.seq }</td>
			<td width ="300px"> 작성자 : ${boardDTO.name }</td>
			<td width ="300px"> 조회수 : ${boardDTO.hit }</td>
		</tr>
		<tr>
			<td colspan ="3" height ="300px" valign ="top">
				<textarea rows="20" cols="126px">${boardDTO.content }</textarea>
			</td>
		</tr>
	</table>
	<br><br>
	<button onclick ="location.href='boardList.jsp?pg=${pg }'"> 글목록 </button> &nbsp;
	<c:if test="${sessionScope.memberId == boardDTO.id }">
		<button onclick ="location.href='boardModifyReady.jsp?pg=${pg }&seq=${boardDTO.seq }'"> 글수정 </button> &nbsp;
		<button onclick ="location.href='boardDelete.jsp?seq=${boardDTO.seq }'"> 글삭제 </button>
	</c:if>
</body>
</html>