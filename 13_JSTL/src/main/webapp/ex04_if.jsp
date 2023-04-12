
<!-- ex04_if.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04_if.jsp</title>
</head>
<body>
	<h1>if</h1>
	<%--
		# <c:if> : if 문을 대체하는 태그
		- <c:if test ="${조건식}" var ="변수 이름"/>
		  * var : 조건식의 결과값을 저장
	--%>
	<c:if test ="${true }">
		<p>참입니다 </p>
	</c:if>
	<br>
	
	<c:set var ="number" value ="6"/>
	<c:if test ="${number % 2 == 1}" var ="result">
		<p>${number } : 홀수</p>
		<p>result : ${result }</p>
	</c:if>
	<c:if test ="${number % 2 == 0}" var ="result">
		<p>${number } : 짝수</p>
		<p>result : ${result }</p>
	</c:if>
	<br>
	
	<h2>form 결과</h2>
	<c:set var ="name">${param.name }</c:set>
	<c:set var ="age" value ="${param.age }"/>
	<p>${name }님의 나이 : ${age } 세</p>
	<c:if test ="${age > 19 }">
		<p><strong>성인</strong> 입니다</p>
	</c:if>
	<c:if test ="${age < 20 }">
		<p><strong>미성년자</strong> 입니다</p>
	</c:if>
	<br>
	
	<c:if test ="${true }" var ="res_a"/>
	<p>res_a : ${res_a }</p>
	<p>조건식의 EL 앞뒤에 공백이 있으면 false 입니다</p>
	<br>
	
	<c:if test ="100" var ="res_b"/>
	<p>res_b : ${res_b }</p>
	<p>조건식에 EL 이 아닌 정수를 사용하면 false 입니다</p>
	<br>
	
	<c:if test ="뭘까요" var ="res_c"/>
	<p>res_c : ${res_c }</p>
	<br>
	
	<c:if test ="true" var ="res_d"/>
	<p>res_d : ${res_d }</p>
	<p>true 는 대소문자를 구분하지 않고 true 입니다</p>
</body>
</html>