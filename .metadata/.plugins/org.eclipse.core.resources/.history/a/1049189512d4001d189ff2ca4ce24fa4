
<!-- board/boardModify.jsp -->

<%@page import="board.dao.BoardDAO"%>
<%@page import="board.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	// 전송 데이터 가져오기
	int seq = Integer.parseInt(request.getParameter("seq"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	// 수정 정보를 가지는 dto 객체 생성
	BoardDTO boardDTO = new BoardDTO();
	boardDTO.setSeq(seq);
	boardDTO.setSubject(subject);
	boardDTO.setContent(content);
	
	// DB 작업
	BoardDAO boardDAO = new BoardDAO();
	int su = boardDAO.boardModify(boardDTO);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardModify.jsp</title>
<script type="text/javascript">
 	window.onload = function(){
		<%if(su > 0) {%>
			alert("글이 수정 되었습니다^^");
			location.href="boardList.jsp?pg=<%=pg%>";
		<%} else {%>
			alert("글 수정 실패!!!");
			history.back(-1);
		<%} %>
	}
</script>
</head>
<body>
	<h1>글수정 확인</h1>

</body>
</html>