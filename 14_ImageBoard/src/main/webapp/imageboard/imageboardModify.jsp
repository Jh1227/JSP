
<!-- imageboard/imageboardModify.jsp -->

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="imageboard.dao.ImageBoardDAO"%>
<%@page import="imageboard.dto.ImageBoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String realFolder = request.getServletContext().getRealPath("/storage");
	MultipartRequest mr = new MultipartRequest(request, realFolder, 1024*1024*5, "utf-8");
	
	int pg = Integer.parseInt(mr.getParameter("pg"));
	int seq = Integer.parseInt(mr.getParameter("seq"));
	String imageId = mr.getParameter("imageId");
	String imageName = mr.getParameter("imageName");
	int imagePrice = Integer.parseInt(mr.getParameter("imagePrice"));
	int imageQty = Integer.parseInt(mr.getParameter("imageQty"));
	String imageContent = mr.getParameter("imageContent");
	String imageFile = mr.getOriginalFileName("imageFile");
	
	ImageBoardDTO imageboardDTO = new ImageBoardDTO();
	imageboardDTO.setImageId(imageId);
	imageboardDTO.setImageName(imageName);
	imageboardDTO.setImagePrice(imagePrice);
	imageboardDTO.setImageQty(imageQty);
	imageboardDTO.setImageContent(imageContent);
	imageboardDTO.setImageFile(imageFile);
	imageboardDTO.setSeq(seq);
	
	ImageBoardDAO imageboardDAO = new ImageBoardDAO();
	int su = imageboardDAO.imageboardModify(imageboardDTO);
	
	request.setAttribute("su", su);
	request.setAttribute("pg", pg);
	request.setAttribute("imageName", imageName);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("../main/index.jsp?req=imageboardModifyResult");
	dispatcher.forward(request, response);
%>