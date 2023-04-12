
<!-- update/update.jsp -->

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
	boolean check = dao.update(dto);
	String msg = null;
	if(check){
		msg = name + "님의 정보가 수정되었습니다!!";
	} else {
		msg = "수정 실패ㅠㅜ";
	}
	
	request.setAttribute("msg", msg);
	pageContext.forward("/update/result.jsp");
%>