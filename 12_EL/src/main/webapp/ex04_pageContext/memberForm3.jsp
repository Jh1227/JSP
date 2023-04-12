
<!-- ex04_pageContext/memberForm3.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberForm3.jsp</title>
<style type="text/css">
table, th, td { border: 1px solid gray; border-collapse: collapse; padding: 4px; }
</style>
</head>
<body>
	<h1>정보 입력3</h1>
	<br>
	<form action="" method ="post">
		<table>
			<tr>
				<th> 아이디 </th>
				<td><input type ="text" name ="id"></td>
			</tr>
			<tr>
				<th> 비밀번호 </th>
				<td><input type ="password" name ="pwd"></td>
			</tr>
			<tr>
				<th> 이 름 </th>
				<td><input type ="text" name ="name"></td>
			</tr>
			<tr>
				<th> e-mail </th>
				<td><input type ="text" name ="email"></td>
			</tr>
			<tr>
				<td colspan ="2" align ="center">
					<input type ="submit" value ="완료"> &nbsp; <input type ="reset" value ="취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>