
<!-- 02_forward/bloodResult.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = "test";
String bloodType = request.getParameter("bloodType");
bloodType += ".jsp";
%>
<jsp:forward page="<%=bloodType %>">
	<jsp:param name="name" value="<%=name %>"/>
</jsp:forward>