
<!-- insert/insert.jsp -->

<%@page import="school.dao.SchoolDAO"%>
<%@page import="school.dto.SchoolDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	int code = Integer.parseInt(request.getParameter("code"));
	
	SchoolDTO dto = new SchoolDTO(name, value, code);
	SchoolDAO dao = new SchoolDAO();
	
	String msg = null;
	boolean check = dao.insert(dto);
	if(check){
		msg = name + "님이 추가 되었습니다!!";
	} else {
		msg = "추가 실패..!";
	}
	
	request.setAttribute("msg", msg);
	pageContext.forward("/insert/result.jsp");
	
%>