
<!-- board/boardWrite.jsp -->

<%@page import="board.dao.BoardDAO"%>
<%@page import="board.dto.BoardDTO"%>
<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("memberId");
	String name = (String)session.getAttribute("memberName");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");

	BoardDTO boardDTO = new BoardDTO();
	boardDTO.setId(id);
	boardDTO.setName(name);
	boardDTO.setSubject(subject);
	boardDTO.setContent(content);
	
	BoardDAO boardDAO = new BoardDAO();
	int res = boardDAO.write(boardDTO);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWrite.jsp</title>
</head>
<body>
	<h1>글쓰기 확인</h1>
	<br>
	<%if(res > 0) {%>
		<p>작성하신 글이 등록 되었습니다</p>
	<%} else {%>
		<p>등록 실패...</p>
	<%} %>
	<br><br>
	<button onclick ="location.href='../index.jsp'"> Main </button>
</body>
</html>