 
<!-- ex01.jsp -->

<%-- JSP 주석 --%>

<%--
	# JSP ( JavaServerPage )
	- 서블릿은 웹 응용프로그램을 효과적으로 개발할 수 있지만, 프로그램 작성이 불편한 단점이 있습니다
	  JSP 는 서블릿 기술을 바탕으로, 빠르게 원하는 웹 응용프로그램을 작성할 수 있습니다
	- 실행과정
	  *.jsp 파일	->		*.java 파일		->		*.class 파일	->		server 실행
	  			 servlet 				 compile
	  1. 사용자의 웹 브라우저에서 http://serverURL/xxx.jsp 형태로 해당 페이지 요청
	  2. 웹 서버는 요청한 페이지를 처리하기 위해서 JSP 컨테이너에 처리 요청
	  3. 서블릿으로 변환해서 java class 파일로 컴파일
	  
	# JSP 지시자 : <%@  %>
	- 페이지가 실행될 때 필요한 정보 또는 설정을 정의하는 역할입니다
	- 종류
	  > page	: 해당 페이지에 대한 정보 및 설정을 하는 역할의 지시자
	    include : JSP 파일 내부에 다른 파일을 삽입하기 위한 지시자
	    taglib  : JSP 페이지 내에서 사용되는 별도의 표현 언어들을 사용하기 위해서 쓰이는 지시자
	    
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<%--
	# 스트립트 요소
	- JSP 프로그래밍에서 사용되는 문법의 표현 형태입니다
	- <%! %> : 선언문
	  > JSP 에서 사용되는 변수나 메서드를 선언하는 영역
	  
	  <% %>  : 스크립틀릿
	  > 일반적인 코드를 작성하는 영역
	  
	  <%= %> : 표현식
	  > 데이터를 표현하는 영역
--%>
	<h1>JSP 시작</h1>
	<hr>
	<%="JSP 시작" %>
</body>
</html>