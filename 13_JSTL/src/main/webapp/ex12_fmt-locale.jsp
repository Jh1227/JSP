
<!-- ex12_fmt-locale.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex12_fmt-locale.jsp</title>
</head>
<body>
	<%--
		# <fmt:setLocale> : 국가별로 다른 통화 기호나 날짜를 표현합니다
	--%>
	<c:set var="today" value="<%=new java.util.Date() %>"/>
	
	<h1>로케일 설정</h1>
	<fmt:setLocale value="ko_kr"/>
	<p>
		한글 설정 : <fmt:formatNumber value="10000" type="currency"/> - <fmt:formatDate value="${today }"/>
	</p>
	<fmt:setLocale value="ja_JP"/>
	<p>
		일어 설정 : <fmt:formatNumber value="10000" type="currency"/> - <fmt:formatDate value="${today }"/>
	</p>
	<fmt:setLocale value="en_US"/>
	<p>
		영어 설정 : <fmt:formatNumber value="10000" type="currency"/> - <fmt:formatDate value="${today }"/>
	</p>
</body>
</html>