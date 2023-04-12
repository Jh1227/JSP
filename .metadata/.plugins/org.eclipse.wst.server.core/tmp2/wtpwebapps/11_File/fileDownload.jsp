
<!-- fileDownload.jsp -->

<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String fileName = request.getParameter("fileName");
	
	// 실제 저장 폴더 경로
	String realFolder = request.getServletContext().getRealPath("/storage");
	
	// 파일 객체 생성
	File file = new File(realFolder, fileName);
	
	// 파일 링크를 클릭했을 때 다운로드 화면 처리
	fileName = "attachment;fileName="+new String(URLEncoder.encode(fileName, "utf-8")).replaceAll("\\+", " ");
	response.setHeader("Content-Disposition", fileName);
	response.setHeader("Content-length", file.length()+"");
	
	out.clear(); // out 객체의 스트림 삭제
	out = pageContext.pushBody(); // 다운로드 정보 저장
	
	BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
	BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
	
	byte[] fs = new byte[(int)file.length()];
	bis.read(fs, 0, fs.length);
	bos.write(fs);
	
	bis.close();
	bos.close();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileDownload.jsp</title>
</head>
<body>
	<h1>파일 다운로드</h1>
</body>
</html>