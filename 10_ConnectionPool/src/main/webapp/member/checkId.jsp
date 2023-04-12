
<!-- member/checkId.jsp -->

<%@page import="member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	MemberDAO memberDAO = new MemberDAO();
	boolean exist = memberDAO.isExistId(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkId.jsp</title>
</head>
<body>
	<h2>ID 확인</h2>
	<form action="checkId.jsp" method ="post">
		<%if(exist) {%>
			<p><%=id %> 사용중 입니다~!</p>
			<br>
			<label>아이디 : </label><input type ="text" name ="id"> &nbsp; <input type ="submit" value ="중복체크">
		<%} else {%>
			<p><%=id %> 사용가능 합니다!^^</p>
			<br>
			<input type ="button" value ="사용" onclick ="checkIdClose()">
		<%} %>
	</form>
	
	<!-- script -->
	<script type="text/javascript">
		function checkIdClose(){
			opener.writeForm.id.value="<%=id %>";
			window.close();
			opener.writeForm.pwd.focus();
		}
	</script>
</body>
</html>