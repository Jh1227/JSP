
<!-- imageboard/imageboardDelete.jsp -->

<%@page import="imageboard.dao.ImageBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int seq = Integer.parseInt(request.getParameter("seq"));
	int pg = Integer.parseInt(request.getParameter("pg"));

	ImageBoardDAO imageboardDAO = new ImageBoardDAO();
	int su = imageboardDAO.imageboardDelete(seq);
	
	request.setAttribute("su", su);
	request.setAttribute("pg", pg);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=imageboardDeleteResult");
	dispatcher.forward(request, response);
%>