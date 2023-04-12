
<!-- ex05_choose.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05_choose.jsp</title>
</head>
<body>
	<h1>choose</h1>
	<%--
		# <c:choose> : if ~ else if 문을 대체하는 태그입니다
		- <c:choose>
			  <c:when test ="조건식_a"> 실행 내용 </c:when>	
			  <c:when test ="조건식_b"> 실행 내용 </c:when>
			  ......
			  <c:otherwise> 실행 내용 </c:otherwise>	
		  </c:choose>
	--%>
	<c:set var ="age" value ="18"/>
	<h2>
		<c:choose>
			<c:when test ="${age >= 20 }"> 성인 </c:when>
			<c:when test ="${age >= 17 }"> 고등학생 </c:when>
			<c:when test ="${age >= 14 }"> 중학생 </c:when>
			<c:when test ="${age >= 8 }"> 초등학생 </c:when>
			<c:otherwise> 어린이 </c:otherwise>
		</c:choose>
	</h2>
	<c:if test ="${not (empty param.kor or empty param.eng or empty param.math) }">
		<c:set var ="kor" value ="${param.kor }"/>
		국어 : ${param.kor } 점 <br>
		<c:set var ="eng" value ="${param.eng }"/>
		영어 : ${param.eng } 점 <br>
		<c:set var ="math" value ="${param.math }"/>
		수학 : ${param.math } 점 <br> 
		<c:set var ="avg" value ="${(param.kor + param.eng + param.math) / 3 }"/>
		평균 : ${(param.kor + param.eng + param.math) / 3 } 점 <br>
		<h2> 학점 : 
			<c:choose>
				<c:when test ="${avg >= 90 }"> A </c:when>
				<c:when test ="${avg >= 80 }"> B </c:when>
				<c:when test ="${avg >= 70 }"> C </c:when>
				<c:when test ="${avg >= 60 }"> D </c:when>
				<c:otherwise> F </c:otherwise>
			</c:choose>
		</h2>
	</c:if>
</body>
</html>