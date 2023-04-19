
<!-- board/boardDelete.jsp -->

<%@page import="board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int seq = Integer.parseInt(request.getParameter("seq"));

	BoardDAO boardDAO = new BoardDAO();
	int su = boardDAO.boardDelete(seq);
	
	request.setAttribute("su", su);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=boardDeleteResult");
	dispatcher.forward(request, response);
%> 
