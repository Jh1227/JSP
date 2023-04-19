
<!-- board/boardModifyReady.jsp -->

<%@page import="board.dto.BoardDTO"%>
<%@page import="board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int seq = Integer.parseInt(request.getParameter("seq"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	
	BoardDAO boardDAO = new BoardDAO();
	BoardDTO boardDTO = boardDAO.boardView(seq);
	
	request.setAttribute("seq", seq);
	request.setAttribute("pg", pg);
	request.setAttribute("boardDTO", boardDTO);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=boardModifyForm");
	dispatcher.forward(request, response);
%>