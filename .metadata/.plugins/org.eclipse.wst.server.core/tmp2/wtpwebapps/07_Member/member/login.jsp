
<!-- member/login.jsp -->

<%@page import="java.net.URLEncoder"%>
<%@page import="member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
URL 인코딩
- URI 에서 사용할 수 없는 문자를 인코딩 처리
String encodeString = URLEncoder.encode(encodeString, "utf-8");
String decodeString = URLEncoder.decode(decodeString, "utf-8");
--%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	MemberDAO memberDAO = new MemberDAO();
	String name = memberDAO.login(id, pwd);
	if(name != null){
		response.sendRedirect("loginOk.jsp?id=" + URLEncoder.encode(id, "utf-8") + "&name=" + URLEncoder.encode(name, "utf-8"));
	} else {
		response.sendRedirect("loginFail.jsp");
	}
	
%>
