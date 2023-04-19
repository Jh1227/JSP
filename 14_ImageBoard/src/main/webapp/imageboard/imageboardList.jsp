
<!-- imageboard/imageboardList.jsp -->

<%@page import="imageboard.dto.ImageBoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="imageboard.dao.ImageBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int pg = Integer.parseInt(request.getParameter("pg"));
	
	int article = 5;								// 한 페이지 글 목록수
	int currentPage = pg;							// 현재 페이지
	int startNum = (currentPage - 1) * article + 1; // 시작 글번호
	int lastNum = startNum + article - 1;			// 마지막 글번호
	
	ImageBoardDAO imageboardDAO = new ImageBoardDAO();
	ArrayList<ImageBoardDTO> list = imageboardDAO.imageboardList(startNum, lastNum);
	
	// 페이징
	int totalArticle = imageboardDAO.getTotalArticle(); // 전체 글수
	int totalPage = (totalArticle - 1)/article + 1;     // 전체 페이지 수
	
	int block = 3;
	int startPage = (currentPage - 1)/block * block + 1;
	int endPage = startPage + block - 1;
	if(endPage > totalPage){
		endPage = totalPage;
	}
	
	request.setAttribute("pg", pg);
	request.setAttribute("list", list);
	request.setAttribute("totalPage", totalPage);
	request.setAttribute("startPage", startPage);
	request.setAttribute("endPage", endPage);
	request.setAttribute("block", block);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=imageboardListResult");
	dispatcher.forward(request, response);
%>