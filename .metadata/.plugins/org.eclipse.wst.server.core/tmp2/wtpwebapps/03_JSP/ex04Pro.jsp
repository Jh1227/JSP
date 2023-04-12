
<!-- ex04Pro.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// get 방식은 한글이 깨지지 않지만, post 방식은 한글이 깨지게 됩니다
	// 'request.setCharacterEncoding("utf-8")' 구문으로 깨짐 방지
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	String adult = "";
	if(age > 19) {
		adult = "성인";
	} else {
		adult = "미성년자";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04Pro.jsp</title>
</head>
<body>
	<h1>결 과</h1>
	<p>이 름 : <%=name %></p>
	<p>나 이 : <%=age %>세</p>
	<p>당신은 <%=adult %> 입니다</p>
</body>
</html>