
<!-- ex07_binding/bindingForward.jsp -->

<%@page import="bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 
	# 바인딩 ( binding )
	- 웹 프로그램이 실행되었을 때 데이터를 서블릿 관련 객체에 저장한 후
	  다른 서블릿 또는 JSP 에서 공유하는 방식입니다
-->

<%
	request.setCharacterEncoding("utf-8");
	MemberBean member = new MemberBean("member", "1111", "멤버", "member@test.com");
	            // 바인딩 이름, 바인딩 값
	request.setAttribute("manA", member);
%>
<jsp:forward page ="bindingResult.jsp"/>
