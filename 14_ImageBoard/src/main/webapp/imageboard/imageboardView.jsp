
<!-- imageboard/imageboardView.jsp -->

<%@page import="imageboard.dto.ImageBoardDTO"%>
<%@page import="imageboard.dao.ImageBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 데이터 가져오기
	int seq = Integer.parseInt(request.getParameter("seq"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	
	// DB 에서 상품 정보 가져오기
	ImageBoardDAO imageboardDAO = new ImageBoardDAO();
	ImageBoardDTO imageboardDTO = imageboardDAO.imageboardInfo(seq);
	
	// request 에 상품 정보 추가
	String imageId = imageboardDTO.getImageId();
	String imageName = imageboardDTO.getImageName();
	int imagePrice = imageboardDTO.getImagePrice();
	int imageQty = imageboardDTO.getImageQty();
	String imageContent = imageboardDTO.getImageContent();
	String imageFile = imageboardDTO.getImageFile();
	String logtime = imageboardDTO.getLogtime();
	
	request.setAttribute("pg", pg);
	request.setAttribute("seq", seq);
	request.setAttribute("imageId", imageId);
	request.setAttribute("imageName", imageName);
	request.setAttribute("imagePrice", imagePrice);
	request.setAttribute("imageQty", imageQty);
	request.setAttribute("imageContent", imageContent);
	request.setAttribute("imageFile", imageFile);
	request.setAttribute("logtime", logtime);
	
	// 상품 정보 페이지 이동
	RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=imageboardViewResult");
	dispatcher.forward(request, response);
%>