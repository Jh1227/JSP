
<!-- imageboard/imageboardModifyReady.jsp -->

<%@page import="imageboard.dto.ImageBoardDTO"%>
<%@page import="imageboard.dao.ImageBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int seq = Integer.parseInt(request.getParameter("seq"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	
	ImageBoardDAO imageboardDAO = new ImageBoardDAO();
	ImageBoardDTO imageboardDTO = imageboardDAO.imageboardInfo(seq);
	
	// request 에 상품 정보 추가
	String imageId = imageboardDTO.getImageId();
	String imageName = imageboardDTO.getImageName();
	int imagePrice = imageboardDTO.getImagePrice();
	int imageQty = imageboardDTO.getImageQty();
	String imageContent = imageboardDTO.getImageContent();
	String imageFile = imageboardDTO.getImageFile();
	
	request.setAttribute("pg", pg);
	request.setAttribute("seq", seq);
	request.setAttribute("imageId", imageId);
	request.setAttribute("imageName", imageName);
	request.setAttribute("imagePrice", imagePrice);
	request.setAttribute("imageQty", imageQty);
	request.setAttribute("imageContent", imageContent);
	request.setAttribute("imageFile", imageFile);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=imageboardModifyForm");
	dispatcher.forward(request, response);
%>