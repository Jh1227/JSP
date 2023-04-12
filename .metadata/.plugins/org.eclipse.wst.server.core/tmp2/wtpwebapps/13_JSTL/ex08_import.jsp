
<!-- ex08_import.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex08_import.jsp</title>
</head>
<body>
	<h1>import</h1>
	<%--
		# <c:import> : <jsp:include> 액션태그와 같이 외부 파일을 현재 위치에 삽입합니다
		- <c:import var="변수명" url="페이지 경로 or URL" scope="접근 범위"/>
		  * 외부페이지를 변수에 저장
		  
		  <c:import url="페이지 경로 or URL?매개변수=값">
		  		<c:param name="매개변수" value="값"/>
		  </c:import>
		  * 전달할 값이 있으면 url에 직접 추가하거나 <c:param> 태그를 사용
	--%>
	<c:set var ="requestVar" value ="import test" scope ="request"/>
	<c:import var ="contents" url ="ex08_other.jsp">
		<c:param name ="data_1" value ="JSP"/>
		<c:param name ="data_2" value ="Servlet"/>
	</c:import>
	
	<h2>ex08_other.jsp 삽입</h2>
	${contents }
	
	<h2>naver</h2>
	<iframe src="ex08_naver.jsp" style ="width: 100%; height: 500px;"></iframe>
</body>
</html>