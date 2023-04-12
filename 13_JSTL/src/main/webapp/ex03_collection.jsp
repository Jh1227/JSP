
<!-- ex03_collection.jsp -->

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="jstl.Person"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_collection.jsp</title>
</head>
<body>
	<h1>set - list</h1>
	<%
	ArrayList<Person> sList = new ArrayList<>();
	sList.add(new Person("testA", 100));
	sList.add(new Person("testB", 50));
	%>
	<c:set var ="personList" value ="<%=sList %>"/>
	<h2>
		이 름 : ${personList[1].name } <br>
		나 이 : ${personList[1].age } <br>
	</h2>
	<br>
	
	<h1>set - map</h1>
	<%
	Map<String, Person> pMap = new HashMap<>();
	pMap.put("manA", new Person("회원A", 70));
	pMap.put("manB", new Person("회원B", 30));
	%>
	<c:set var ="personMap" value ="<%=pMap %>"/>
	<h2>
		이 름 : ${personMap.manA.name } <br>
		나 이 : ${personMap.manA.age } <br>
	</h2>
</body>
</html>