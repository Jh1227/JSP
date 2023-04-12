
<!-- modifyForm.jsp -->

<%@page import="member.dto.MemberDTO"%>
<%@page import="member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("memberId");

	// 현재 접속된 id 데이터 가져오기
	MemberDAO memberDAO = new MemberDAO();
	MemberDTO memberDTO = memberDAO.getMember(id);
	
	String tel = memberDTO.getTel();
	String tel_1 = tel.substring(0, 3);
	String tel_2 = tel.substring(4, 8);
	String tel_3 = tel.substring(9);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyForm.jsp</title>
<style type="text/css">
table, tr, td { border: 1px solid black; border-collapse: collapse; padding: 10px; }
.title { width: 120px; text-align: center; }
</style>
<script type="text/javascript" src ="../script/memberScript.js"></script>
</head>
<body>
	<h2>회원정보 수정</h2>
	<br>
	<form name ="modifyForm" action="modify.jsp" method ="post">
		<table>
			<tr>
				<td class ="title"> 이 름 </td>
				<td><input type ="text" name ="name" value ="<%=memberDTO.getName() %>"></td>
			</tr>
			<tr>
				<td class ="title"> 아이디 </td>
				<td><input type ="text" name ="id" value ="<%=memberDTO.getId() %>" readonly></td>
			</tr>
			<tr>
				<td class ="title"> 비밀번호 </td>
				<td><input type ="password" name ="pwd" value ="<%=memberDTO.getPwd() %>"></td>
			</tr>
			<tr>
				<td class ="title"> 비밀번호 확인 </td>
				<td><input type ="password" name ="repwd"></td>
			</tr>
			<tr>
				<td class ="title"> 성 별 </td>
				<td>
					<%if(memberDTO.getGender().equals("M")) {%>
						<input type ="radio" name ="gender" value ="M" checked><label for ="genderM"> 남 </label>
						<input type ="radio" name ="gender" value ="F"><label for ="genderF"> 여 </label>
					<%} else {%>
						<input type ="radio" name ="gender" value ="M"><label for ="genderM"> 남 </label>
						<input type ="radio" name ="gender" value ="F" checked><label for ="genderF"> 여 </label>
					<%} %>
				</td>
			</tr>
			<tr>
				<td class ="title"> E-mail </td>
				<td>
					<input type ="text" name ="email" value ="<%=memberDTO.getEmail() %>" size ="10"> @
					<input type ="text" name ="domain" value ="<%=memberDTO.getDomain() %>">
				</td>
			</tr>
			<tr>
				<td class ="title"> 전화번호 </td>
				<td>
					<input type ="text" name ="tel_1" size ="3" value ="<%=tel_1 %>" maxlength ="3"> -
					<input type ="text" name ="tel_2" size ="4" value ="<%=tel_2 %>" maxlength ="4"> -
					<input type ="text" name ="tel_3" size ="4" value ="<%=tel_3 %>" maxlength ="4">
				</td>
			</tr>
			<tr>
				<td class ="title"> 주 소 </td>
				<td><input type ="text" name ="addr" value ="<%=memberDTO.getAddr() %>" size ="50"></td>
			</tr>
			<tr>
				<td class ="title" colspan ="2">
					<input type ="button" value ="수정완료" onclick ="checkModify()"> &nbsp;
					<input type ="reset" value ="다시작성">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>