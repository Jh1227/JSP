
<!-- 01_include/ex02_inlcudeTag.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	# include 액션 태그에서 포함되는 페이지에 값 전달하기
	- 포함되는 jsp 페이지에 값 전달은 요청 파라미터를 추가적으로 지정해서 합니다
	  include 액션 태그의 body 안에 param 액션 태그를 사용합니다
	  <jsp:include page="">
	      <jsp:param name="" value=""/>
	  </jsp:include>
--%>
<%
request.setCharacterEncoding("utf-8");
String site = request.getParameter("siteName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_inlcudeTag.jsp</title>
</head>
<body>
	<h1>param 액션태그</h1>
	<jsp:include page="ex02_includeTop.jsp">
		<jsp:param name="site" value="<%=site %>"/>
	</jsp:include>
	<br>
	<p>includeTag.jsp body 입니다</p>
	<strong><%=site %></strong>
</body>
</html>

























