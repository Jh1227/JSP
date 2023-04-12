
<!-- member/write.jsp -->

<%@page import="member.dao.MemberDAO"%>
<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String domain = request.getParameter("domain");
	String tel = request.getParameter("tel_1") + "-" + request.getParameter("tel_2") + "-" + request.getParameter("tel_3");
	String addr = request.getParameter("addr");
	
	MemberDTO memberDTO = new MemberDTO();
	memberDTO.setName(name);
	memberDTO.setId(id);
	memberDTO.setPwd(pwd);
	memberDTO.setGender(gender);
	memberDTO.setEmail(email);
	memberDTO.setDomain(domain);
	memberDTO.setTel(tel);
	memberDTO.setAddr(addr);
	
	MemberDAO memberDAO = new MemberDAO();
	int res = memberDAO.write(memberDTO);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write.jsp</title>
</head>
<body>
	<h1>회원가입 확인</h1>
	<br>
	<%if(res > 0) {%>
		회원가입 성공!!!
	<%} else {%> 
		회원가입 실패...
	<%} %>
	<br><br>
	<input type ="button" value ="Main" onclick ="location.href='../index.jsp'"> &nbsp;
</body>
</html>