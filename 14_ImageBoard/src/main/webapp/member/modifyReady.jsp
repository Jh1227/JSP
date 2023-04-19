
<!-- member/modifyReady.jsp -->

<%@page import="member.dto.MemberDTO"%>
<%@page import="member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("memberId");

	// 현재 접속된 id 데이터 가져오기
	MemberDAO memberDAO = new MemberDAO();
	MemberDTO memberDTO = memberDAO.getMember(id);
	
	String name = memberDTO.getName();
	String pwd = memberDTO.getPwd();
	String gender = memberDTO.getGender();
	String email = memberDTO.getEmail();
	String domain = memberDTO.getDomain();
	String tel = memberDTO.getTel();
	String tel_1 = tel.substring(0, 3);
	String tel_2 = tel.substring(4, 8);
	String tel_3 = tel.substring(9);
	String addr = memberDTO.getAddr();

	request.setAttribute("name", name);
	request.setAttribute("id", id);
	request.setAttribute("pwd", pwd);
	request.setAttribute("gender", gender);
	request.setAttribute("email", email);
	request.setAttribute("domain", domain);
	request.setAttribute("tel_1", tel_1);
	request.setAttribute("tel_2", tel_2);
	request.setAttribute("tel_3", tel_3);
	request.setAttribute("addr", addr);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=modifyForm");
	dispatcher.forward(request, response);
%>