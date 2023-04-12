
<!-- ex10_fmt-number.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex10_fmt-number.jsp</title>
</head>
<body>
	<h1>숫자 포맷</h1>
	<%--
		# <fmt:formatNumber> : 숫자 포맷 설정
		- <fmt:formatNumber var="변수 설정" value="출력할 숫자" type="출력 양식"
							groupingUsed="구분 기호 사용 여부" pattern="숫자 패턴" scope="영역"/>
		  * type 		 : percent, currency(통화), number(일반 숫자, 기본값)등 지원
		    groupingUsed : 세자리마다 콤마를 출력할지 여부 지정. 기본값 true
		    pattern		 : 출력할 숫자 양식의 패턴 지정
		    
		# <fmt:parseNumber> : 문자열을 숫자 포맷으로 변환
		- <fmt:parseNumber var="변수 설정" value="파싱할 문자열" type="출력 양식"
						   integerOnly="정수만 파싱" pattern="패턴" scope="영역"/>
		  * type 		: 문자열의 타입 설정. 기본값 number(숫자)
		    integerOnly : 정수 부분만 표시할지 여부 결정. 기본값 false
		    pattern		: 문자열의 양식을 패턴으로 지정
	--%>
	<c:set var ="num1" value ="12345"/>
	<p>콤마 O : <fmt:formatNumber value ="${num1 }"/></p>
</body>
</html>