
<!-- 01_include/ex01_includeTest.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
%>
포함되는 페이지 ex01_includeTest.jsp 입니다<br>
<strong><%=name %></strong>님 안녕하세요<br>
<hr>