
<!-- insert/result.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = (String)request.getAttribute("msg");
%>    
<%@ include file ="/layout/header.jsp" %>
	<div align ="center">
		<h2><%=msg %></h2>
	</div>
<%@ include file ="/layout/footer.jsp" %>