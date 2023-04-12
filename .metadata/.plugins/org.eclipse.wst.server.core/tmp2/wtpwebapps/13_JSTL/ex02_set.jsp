
<!-- ex02_set.jsp -->

<%@page import="jstl.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_set.jsp</title>
</head>
<body>
	<h1>자바빈즈 - 생성자</h1>
	<%--
		# <c:set> 태그를 이용해서 자바빈즈나 컬렉션을 생성할 수 있습니다
		  - target 과 property 속성을 사용합니다
		    <c:set var ="변수명" value ="저장할 객체 or 컬렉션" scope ="접근 범위"/>
		    <c:set target ="var로 설정한 변수" property ="객체 속성명" value ="속성 값"/>
	--%>
	<h2>
		<c:set var ="manA" value ='<%=new Person("manA", 100) %>'/>
		이름 : ${manA.name } <br>
		나이 : ${manA.age } <br>
		<br>
	</h2>
	
	<h1>자바빈즈 - target, property</h1>
	<h2>
		<c:set var ="man2" value ="<%= new Person() %>" scope ="request"/>
		<c:set target ="${man2 }" property ="name" value ="man2"/>
		<c:set target ="${man2 }" property ="age" value ="20"/>
		이름 : ${requestScope.man2.name } <br>
		나이 : ${requestScope.man2.age } <br>
	</h2>
</body>
</html>