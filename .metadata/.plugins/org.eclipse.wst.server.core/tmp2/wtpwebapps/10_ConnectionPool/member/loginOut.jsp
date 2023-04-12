
<!-- member/loginOut.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// session 삭제, 무효화
	session.removeAttribute("memberId");
	session.removeAttribute("memberName");
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOut.jsp</title>
<script type="text/javascript">
	window.onload = function(){
		alert("로그아웃 되었습니다 ^-^");
		location.href="../index.jsp";
	}
</script>
</head>
<body>
	
</body>
</html>