
<!-- delete/delete.jsp -->

<%@page import="school.dao.SchoolDAO"%>
<%@page import="school.dto.SchoolDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	
	SchoolDAO dao = new SchoolDAO();
	String msg = null;
	boolean check = dao.delete(name);
	if(check){
		msg = name + "님이 삭제되었습니다!";
	} else {
		msg = "삭제 실패...!";
	}
	
	request.setAttribute("msg", msg);
	pageContext.forward("/delete/result.jsp");
%>
