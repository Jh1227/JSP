
<!-- 03_javabeans/beanTestPro.jsp -->

<%@page import="test.bean.TestBeanDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	
	TestBeanDTO dtoA = new TestBeanDTO();
	dtoA.setBeanName("dtoA");
%>
<%--
	# javabeans
	- 데이터를 저장하기 위한 변수(속성), getter/setter 메서드로만 이루어진 class 입니다

	# useBean : javabeans 객체 생성, 설정
	- <jsp:useBean id ="빈 이름" class ="자바빈 클래스 이름" scope =""/>
	  * id    : 생성될 자바빈 객체(instance) 이름
	    class : 객체 생성에 사용되는 자바빈 클래스명. 팩키지명을 포함한 자바클래스의 풀네임 사용
	    scope : 자바빈 객체 공유되는 유효 범위 지정( page(default), request, session, application ) -> 생략가능
	    
	# setProperty : 프로퍼티 값 설정
	- <jsp:setProperty name ="빈 이름" property ="프로퍼티 이름" value ="프로퍼티에 저장할 값"/>
	  * name     : 자바빈 객체 이름
	    property : 프로퍼티명
	    value    : 프로퍼티에 저장하는 값 -> 생략가능
	    
	# getProperty : 프로퍼티 값 가져오기
	- <jsp:getProperty name ="빈 이름" property ="프로퍼티 이름"/>
	  * name     : 자바빈 객체 이름
	    property : 프로퍼티 명
--%>
<jsp:useBean id ="dtoB" class ="test.bean.TestBeanDTO"> <!-- TestBeanDTO dtoB = new TestBeanDTO(); -->
	<jsp:setProperty name ="dtoB" property ="beanName" value ="<%=name %>"/> <!-- dtoA.setName("dtoB"); -->
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanTestPro.jsp</title>
</head>
<body>
	<h1>javabeans test</h1>
	<br>
	<p>입력한 이름 : <%=name %></p>
	<br>
	<p>dtoA 이름 : <%=dtoA.getBeanName() %></p>
	<p>dtoB 이름 : <jsp:getProperty name ="dtoB" property ="beanName"/></p>
</body>
</html>