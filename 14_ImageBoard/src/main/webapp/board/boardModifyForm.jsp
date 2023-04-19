
<!-- board/boardModifyForm.jsp -->

<%@page import="board.dto.BoardDTO"%>
<%@page import="board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardModifyForm.jsp</title>
<style type="text/css">
h1 { text-align: center; }
table, th, td { border: 1px solid black; border-collapse: collapse; padding: 4px; }
textarea { resize: none; }
</style>
<script type="text/javascript" src ="../script/boardScript.js"></script>
</head>
<body>
	<h1>글수정</h1>
	<br>
	<form name ="boardModifyForm" action="../board/boardModify.jsp" method ="post">
		<input type ="hidden" name ="seq" value ="${seq }">
		<input type ="hidden" name ="pg" value ="${pg }">
		<table>
			<tr>
				<th> 제목 </th>
				<td><input type ="text" name ="subject" value ="${boardDTO.subject }" size ="50"></td>
			</tr>
			<tr>
				<th> 내용 </th>
				<td>
					<textarea rows ="20" cols ="52" name ="content">${boardDTO.content }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan ="2" align ="center">
					<input type ="button" value ="수정 완료" onclick ="checkBoardModify()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>