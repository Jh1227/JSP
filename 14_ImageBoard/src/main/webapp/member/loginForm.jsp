
<!-- member/loginForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
<style type="text/css">
table, th, td { border: 1px solid black; border-collapse: collapse; }
tr:last-child > td { text-align: center; }
th, td { padding: 4px; }
.title { width: 120px; }
</style>
<script type="text/javascript" src="../script/memberScript.js?v=2"></script>
</head>
<body>
	<h1>로그인</h1>
	<br>
	<form name ="loginForm" action="../member/login.jsp" method ="post">
		<table>
			<tr>
				<th class ="title"> 아이디 </th>
				<td><input type ="text" name ="id"></td>
			</tr>
			<tr>
				<th class ="title"> 비밀번호 </th>
				<td><input type ="password" name ="pwd"></td>
			</tr>
			<tr>
				<td colspan ="2">
					<input type ="button" value ="로그인" onclick ="login()"> &nbsp;
					<input type ="button" value ="회원가입" onclick ="location.href='../main/index.jsp?req=writeForm'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>