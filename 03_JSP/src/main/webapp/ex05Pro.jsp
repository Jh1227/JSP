
<!-- ex05Pro.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05Pro.jsp</title>
<style type="text/css">
p { font-size: 24px; }
</style>
</head>
<body>
	<h1>성적 기준</h1>
	<div>
		수 : 90 이상<br>
		우 : 90 미만, 80 이상<br>
		미 : 80 미만, 70 이상<br>
		양 : 70 미만, 60 이상<br>
		가 : 60 미만<br>
	</div>
	<hr>
	<p>
	<%
		String name = request.getParameter("name");
		float kor = Float.parseFloat(request.getParameter("kor"));
		float eng = Float.parseFloat(request.getParameter("eng"));
		float math = Float.parseFloat(request.getParameter("math"));
		float tot = kor + eng + math;
		float avg = tot / 3;
		
		String grade = "가";
		if(avg >= 90) {
			grade = "수";
		} else if(avg >= 80) {
			grade = "우";
		} else if(avg >= 70) {
			grade = "미";
		} else if(avg >= 60) {
			grade = "양";
		}
		
		out.println(name + "님의 성적 : " + grade);
	%>
	</p>
	
	<p><%=name %>님의 성적 : <%=grade %></p>
	
</body>
</html>