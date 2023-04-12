
<!-- 01_include/ex01_include.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
# include 액션 태그
- 다른 페이지의 실행 결과를 현재 페이지에 포함 시킵니다
  <jsp:include page="포함될 페이지"/>
--%>
<%
request.setCharacterEncoding("utf-8");
String pageName = request.getParameter("pageName");
pageName += ".jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_include.jsp</title>
</head>
<body>
	ex01_include.jsp 페이지 시작입니다
	<hr>
	<br>
	<jsp:include page="<%=pageName %>"/>
	<br>
	ex01_include.jsp 페이지 마지막입니다
</body>
</html>


























