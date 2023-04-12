
<!-- ex01_set_out.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_set_out.jsp</title>
</head>
<body>
	<h1>변수 설정</h1>
	<%--
		# <c:set> : 변수 설정
		  <c:set var ="변수명" value ="변수 값" scope ="접근 범위"/>
		  - scope : page(기본), request, session, application
		  
		# <c:remove> : 변수 삭제
		  <c:remove var ="삭제 변수명" scope ="접근 범위"/>
		  
		# <c:out> : 값을 출력하는 기능입니다
		  <c:out value ="출력 값"/>
	--%>
	<h2>
		<c:set var ="num_1" value ="1"/>
		num_1 : ${num_1 }
		<br>
		
		<c:set var ="num_2"> 2 </c:set>
		num_2 : ${num_2 }
		<br>
		
		<c:set var ="num_3" value ="${3 }"/>
		num_3 : ${num_3 }
		<br>
		
		<c:set var ="num_4" value ="4" scope ="request"/>
		num_4 : ${num_4 }
		<br><br>
		
		- remove run - <br>
		<c:remove var ="num_4"/>
		num_4 : ${num_4 }
		<br><br>
		
		- out run - <br>
		<c:out value="출력합니다"/>
		
	</h2>
</body>
</html>