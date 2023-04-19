
<!-- board/boardWriteForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWriteForm.jsp</title>
<style type="text/css">
h1 { text-align: center; }
table, th, td { border: 1px solid black; border-collapse: collapse; }
th, td { padding: 4px; }
textarea { resize: none; }
</style>
<script type="text/javascript" src ="../script/boardScript.js"></script>
</head>
<body>
	<h1>글쓰기</h1>
	<br>
	<form name ="boardWriteForm" action="../board/boardWrite.jsp" method ="post">
		<table border ="1">
			<tr>
				<th> 제목 </th>
				<td><input type ="text" name ="subject" size ="50"></td>
			</tr>
			<tr>
				<th> 내용 </th>
				<td>
					<textarea rows ="20" cols ="52" name ="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan ="2" align ="center">
					<input type ="button" value ="완료" onclick ="checkBoardWrite()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>