
<!-- member/writeForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeForm.jsp</title>
<style type="text/css">
table, tr, td { border: 1px solid black; border-collapse: collapse; padding: 10px; }
.title { width: 120px; text-align: center; }
</style>
<script type ="text/javascript" src ="../script/memberScript.js?v=2"></script>
</head>
<body>
	<h2>회원가입</h2>
	<br>
	<form name ="writeForm" action="../member/write.jsp" method ="post">
		<table>
			<tr>
				<td class ="title"> 이 름 </td>
				<td><input type ="text" name ="name"></td>
			</tr>
			<tr>
				<td class ="title"> 아이디 </td>
				<td><input type ="text" name ="id"> &nbsp; <input type ="button" value ="중복체크" onclick ="checkId()"></td>
			</tr>
			<tr>
				<td class ="title"> 비밀번호 </td>
				<td><input type ="password" name ="pwd"></td>
			</tr>
			<tr>
				<td class ="title"> 비밀번호 확인 </td>
				<td><input type ="password" name ="repwd"></td>
			</tr>
			<tr>
				<td class ="title"> 성 별 </td>
				<td>
					<input type ="radio" name ="gender" value ="M" checked><label for ="genderM"> 남 </label>
					<input type ="radio" name ="gender" value ="F"><label for ="genderF"> 여 </label>
				</td>
			</tr>
			<tr>
				<td class ="title"> E-mail </td>
				<td>
					<input type ="text" name ="email" size ="10"> @
					<select name ="domain">
						<option value ="naver.com">NAVER</option>
						<option value ="gmail.com">Gmail</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class ="title"> 전화번호 </td>
				<td>
					<input type ="text" name ="tel_1" size ="3" maxlength ="3"> -
					<input type ="text" name ="tel_2" size ="4" maxlength ="4"> -
					<input type ="text" name ="tel_3" size ="4" maxlength ="4">
				</td>
			</tr>
			<tr>
				<td class ="title"> 주 소 </td>
				<td><input type ="text" name ="addr" size ="50"></td>
			</tr>
			<tr>
				<td class ="title" colspan ="2">
					<input type ="button" value ="회원가입" onclick ="checkWrite()"> &nbsp;
					<input type ="reset" value ="다시작성">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>