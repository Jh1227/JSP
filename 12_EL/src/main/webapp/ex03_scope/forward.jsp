
<!-- ex03_scope/forward.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	request.setAttribute("addr", "서울시 오디?");
	
%>
<jsp:forward page ="memberPro2.jsp"/>