
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
	
	request.setAttribute("res", res);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=boardWriteResult");
	dispatcher.forward(request, response);
	
%>