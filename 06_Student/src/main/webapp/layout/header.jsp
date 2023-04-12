
<!-- layout/header.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style type="text/css">
#main { width: 500px; }
caption { font-size: 24px; font-weight: bold; border: 1px solid #999999; margin-bottom: 10px; }
.btn { font-weight: bold; }
</style>
</head>
<body>
	<div align ="center">
		<table id ="main">
			<caption>학사 관리 사이트</caption>
			<br>
			<tr>
				<th>
					<input type ="button" class ="btn" value ="입 력" onclick ="document.location.href='/06_Student/insert/codeInput.jsp'">		
				</th>
				<th>
					<input type ="button" class ="btn" value ="수 정" onclick ="document.location.href='/06_Student/update/updateForm.jsp'">		
				</th>
				<th>
					<input type ="button" class ="btn" value ="삭 제" onclick ="document.location.href='/06_Student/delete/deleteForm.jsp'">		
				</th>
				<th>
					<input type ="button" class ="btn" value ="목 록" onclick ="document.location.href='/06_Student/search/select.jsp'">		
				</th>
			</tr>
		</table>
	</div>
