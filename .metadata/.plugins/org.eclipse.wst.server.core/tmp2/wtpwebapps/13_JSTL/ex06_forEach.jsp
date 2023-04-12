
<!-- ex06_forEach.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06_forEach.jsp</title>
</head>
<body>
	<h1>forEach</h1>
	<%--
		# <c:forEach> : for 문을 대체하는 태그입니다
		- <c:forEach var ="변수명" begin ="시작값" end ="마지막값" step ="증가값"/>
		  <c:forEach var ="변수명" items ="컬렉션 or 배열"/>
	--%>
	<h2>일반 forEach</h2>
	<c:forEach var ="i" begin ="1" end ="5" step ="1">
		<p>i : ${i }</p>
	</c:forEach>
	<br>
	
	<h2>향상된 forEach</h2>
	<%
		String[] colors = { "red", "green", "blue", "orange", "black" };
	%>
	<c:forEach var ="stn" items ="<%=colors %>">
		<span style= "color:${stn}">${stn }</span>
	</c:forEach>
	<br>
	
	<h2>varStatus</h2>
	<table border ="1">
		<c:forEach var ="stn" items ="<%=colors %>" varStatus ="check">
			<tr>
				<td> count : ${check.count } </td>
				<td> index : ${check.index } </td>
				<td> current : ${check.current } </td>
				<td> first : ${check.first } </td>
				<td> last : ${check.last } </td>
			</tr>
		</c:forEach>
	</table>
	
	<h2>국가 입력</h2>
	<c:forEach var ="stn" items ="${paramValues.country }">
		<p>${stn }</p>
	</c:forEach>
	
	<h2>구구단 입력</h2>
	<c:set var ="dan" value ="${param.dan }"/>
	<p><strong>${dan } 단</strong></p>
	<table border ="1">
		<c:forEach var ="i"  begin ="1" end ="9" step ="1">
		<tr>
			<td>${dan } x ${i } = ${dan*i }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>