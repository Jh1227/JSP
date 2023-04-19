
<!-- member/loginOut.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// session 삭제, 무효화
	session.removeAttribute("memberId");
	session.removeAttribute("memberName");
	session.invalidate();
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=logoutResult");
	dispatcher.forward(request, response);
%>
