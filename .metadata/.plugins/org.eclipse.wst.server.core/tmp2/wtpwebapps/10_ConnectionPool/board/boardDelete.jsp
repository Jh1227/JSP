
<!-- board/boardDelete.jsp -->

<%@page import="board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int seq = Integer.parseInt(request.getParameter("seq"));

	BoardDAO boardDAO = new BoardDAO();
	int su = boardDAO.boardDelete(seq);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardDelete.jsp</title>
<script type="text/javascript">
 	window.onload = function(){
		<%if(su > 0) {%>
			alert("글이 삭제 되었습니다^^");
			location.href="boardList.jsp?pg=1";
		<%} else {%>
			alert("글 삭제 실패!!!");
			history.back(-1);
		<%} %>
	}
</script>
</head>
<body>

</body>
</html>