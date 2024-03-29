
<!-- fileUpload.jsp -->

<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 실제 저장 폴더 경로
	String realFolder = request.getServletContext().getRealPath("/storage");
	//out.println(realFolder);
	
	// 파일 업로드 객체
	// - MultipartRequest( request, 저장경로, 파일크기, 인코딩방식, 파일정책 )
	// - new DefaultFileRenamePolicy() 
	//   : 업로드시 동일한 이름의 파일이 있을 경우, 기본 파일 이름뒤에 숫자를 붙여서 저장합니다
	MultipartRequest mr = new MultipartRequest(request, realFolder, 1024*1024*5, "utf-8", new DefaultFileRenamePolicy());
	String subject = mr.getParameter("subject");
	String content = mr.getParameter("content");
	
	// 업로드 파일명
	String originalFileName = mr.getOriginalFileName("upload");
	
	// 서버에 저장된 파일명
	String fileName = mr.getFilesystemName("upload");
	
	// 파일 객체
	File file = mr.getFile("upload");
	long fileSize = 0;
	if(file != null){
		fileSize = file.length();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileUpload.jsp</title>
</head>
<body>
	<h1>업로드 확인</h1>
	<br>
	<ul>
		<li>제목 : <%=subject %> </li>
		<li>내용 : <%=content %> </li>
		<li>저장된위치 : <%=realFolder %> </li>
		<li>업로드 파일명 : <a href ="fileDownload.jsp?fileName=<%=URLEncoder.encode(originalFileName, "utf-8") %>"><%=originalFileName %></a></li>
		<li>저장된 파일명 : <a href ="fileDownload.jsp?fileName=<%=URLEncoder.encode(fileName, "utf-8") %>"> <%=fileName %></a></li>
	</ul>
</body>
</html>