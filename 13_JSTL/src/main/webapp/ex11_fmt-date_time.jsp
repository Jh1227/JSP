
<!-- ex11_fmt-date_time.jsp -->

<%@page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex11_fmt-date_time.jsp</title>
</head>
<body>
	<%--
		# <fmt:formatDate> : 날짜와 시간 포맷을 지정합니다
		- <fmt:formatDate value="출력 날짜" type="출력 양식" var="변수 설정"
						  dateStyle="날짜 스타일" timeStyle="시간 스타일" pattern="날짜 패턴" scope="영역"/>
		  * type	  : 출력시 날짜(date), 시간(time), 날짜 및 시간(both) 세가지 중 선택
		    dateStyle : default, short, medium, long, full 중 선택
		    timeStyle : default, short, medium, long, full 중 선택
		    pattern   : 출력할 날짜 및 시간 양식 지정
						  
		# <fmt:timeZone value="지역 설정"/>
	--%>
	<c:set var ="today" value ="<%=new java.util.Date() %>"/>
	
	<h1> 날 짜 </h1>
	<p>full : <fmt:formatDate value ="${today }" type ="date" dateStyle ="full"/></p>
	<p>short : <fmt:formatDate value ="${today }" type ="date" dateStyle ="short"/></p>
	<p>long : <fmt:formatDate value ="${today }" type ="date" dateStyle ="long"/></p>
	<p>default : <fmt:formatDate value ="${today }" type ="date" dateStyle ="default"/></p>
	<br>
	
	<h1> 시 간 </h1>
	<p>full : <fmt:formatDate value ="${today }" type ="time" timeStyle ="full"/></p>
	<p>short : <fmt:formatDate value ="${today }" type ="time" timeStyle ="short"/></p>
	<p>long : <fmt:formatDate value ="${today }" type ="time" timeStyle ="long"/></p>
	<p>default : <fmt:formatDate value ="${today }" type ="time" timeStyle ="default"/></p>
	<br>
	
	<h1> 날짜/시간 </h1>
	<fmt:formatDate var ="dateTime" value ="${today }" type ="both" dateStyle ="full" timeStyle ="full"/>
	<p>${dateTime }</p>
	<fmt:formatDate var ="myDateTime" value ="${today }" type ="both" pattern ="yyyy-MM-dd hh:mm:ss"/>
	<p>${myDateTime }</p>
	
	<h1> 타임존 설정 </h1>
	<%--
	<%
		String[] zone = TimeZone.getAvailableIDs();
		for(int i=0; i<zone.length; i++){
			out.println(zone[i]);
		}
	%>
	--%>
	<fmt:timeZone value="GMT">
		<fmt:formatDate var="gmt" value="${today }" type="both" dateStyle="full" timeStyle="full"/>
		<p>${gmt }</p>
	</fmt:timeZone>
</body>
</html>