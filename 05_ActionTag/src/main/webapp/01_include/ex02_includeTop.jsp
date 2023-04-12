
<!-- 01_include/ex02_includeTop.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String site = request.getParameter("site");
%>
includeTop.jsp 입니다<br>
<%=site %><br>