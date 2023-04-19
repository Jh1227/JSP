
<!-- main/index.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" type="text/css" href="/14_ImageBoard/css/index.css">
</head>
<body>
	<header>
		<h1 align="center"> Index </h1>
	</header>
	<main>
		<aside>
			<nav>
				<h2><a href="/14_ImageBoard/main/index.jsp" id="main"> 메인 화면 </a></h2>
				<c:if test="${sessionScope.memberId == null }">
					<a href="/14_ImageBoard/main/index.jsp?req=writeForm"> 회원가입 </a><br><br>
					<a href="/14_ImageBoard/main/index.jsp?req=loginForm"> 로그인 </a><br><br>
				</c:if>
				<c:if test="${sessionScope.memberId != null }">
					<a href="/14_ImageBoard/member/logOut.jsp"> 로그아웃 </a><br><br>
					<a href="/14_ImageBoard/member/modifyReady.jsp"> 회원정보 수정 </a><br><br>
					<a href="/14_ImageBoard/main/index.jsp?req=boardWriteForm"> 글쓰기 </a><br><br>
					<a href="/14_ImageBoard/board/boardList.jsp?pg=1"> 글목록 </a><br><br>
					<a href="/14_ImageBoard/main/index.jsp?req=imageboardWriteForm"> 상품 등록 </a><br><br>
					<a href="/14_ImageBoard/imageboard/imageboardList.jsp?pg=1"> 상품 목록 </a><br><br>
				</c:if>
			</nav>
		</aside>
		<section>
			<!-- main -->
			<c:if test="${param.req == null }">
				<jsp:include page="body.jsp"/>
			</c:if>
			<!-- 회원 가입 -->
			<c:if test="${param.req == 'writeForm' }">
				<jsp:include page="../member/writeForm.jsp"/>
			</c:if>
			<c:if test="${param.req == 'writeResult' }">
				<jsp:include page="../member/writeResult.jsp"/>
			</c:if>
			<!-- 로그인 -->
			<c:if test="${param.req == 'loginForm' }">
				<jsp:include page="../member/loginForm.jsp"/>
			</c:if>
			<c:if test="${param.req == 'loginOk' }">
				<jsp:include page="../member/loginOk.jsp"/>
			</c:if>
			<c:if test="${param.req == 'loginFail' }">
				<jsp:include page="../member/loginFail.jsp"/>
			</c:if>
			<!-- 로그아웃 -->
			<c:if test="${param.req == 'logoutResult' }">
				<jsp:include page="../member/logoutResult.jsp"/>
			</c:if>
			<!-- 회원정보 수정 -->
			<c:if test="${param.req == 'modifyForm' }">
				<jsp:include page="../member/modifyForm.jsp"/>
			</c:if>
			<c:if test="${param.req == 'modifyResult' }">
				<jsp:include page="../member/modifyResult.jsp"/>
			</c:if>
			<!-- 글쓰기 -->
			<c:if test="${param.req == 'boardWriteForm' }">
				<jsp:include page="../board/boardWriteForm.jsp"/>
			</c:if>
			<c:if test="${param.req == 'boardWriteResult' }">
				<jsp:include page="../board/boardWriteResult.jsp"/>
			</c:if>
			<!-- 글목록 -->
			<c:if test="${param.req == 'boardListResult' }">
				<jsp:include page="../board/boardListResult.jsp"/>
			</c:if>
			<!-- 글보기 -->
			<c:if test="${param.req == 'boardViewResult' }">
				<jsp:include page="../board/boardViewResult.jsp"/>
			</c:if>
			<!-- 글수정 -->
			<c:if test="${param.req == 'boardModifyForm' }">
				<jsp:include page="../board/boardModifyForm.jsp"/>
			</c:if>
			<c:if test="${param.req == 'boardModifyResult' }">
				<jsp:include page="../board/boardModifyResult.jsp"/>
			</c:if>
			<!-- 글삭제 -->
			<c:if test="${param.req == 'boardDeleteResult' }">
				<jsp:include page="../board/boardDeleteResult.jsp"/>
			</c:if>
			<!-- 상품 등록 -->
			<c:if test="${param.req == 'imageboardWriteForm' }">
				<jsp:include page="../imageboard/imageboardWriteForm.jsp"/>
			</c:if>
			<c:if test="${param.req == 'imageboardWriteResult' }">
				<jsp:include page="../imageboard/imageboardWriteResult.jsp"/>
			</c:if>
			<!-- 상품 목록 -->
			<c:if test="${param.req == 'imageboardListResult' }">
				<jsp:include page="../imageboard/imageboardListResult.jsp"/>
			</c:if>
			<!-- 상품 보기 -->
			<c:if test="${param.req == 'imageboardViewResult' }">
				<jsp:include page="../imageboard/imageboardViewResult.jsp"/>
			</c:if>
			<!-- 상품 수정 -->
			<c:if test="${param.req == 'imageboardModifyForm' }">
				<jsp:include page="../imageboard/imageboardModifyForm.jsp"/>
			</c:if>
			<c:if test="${param.req == 'imageboardModifyResult' }">
				<jsp:include page="../imageboard/imageboardModifyResult.jsp"/>
			</c:if>
			<!-- 상품 삭제 -->
			<c:if test="${param.req == 'imageboardDeleteResult' }">
				<jsp:include page="../imageboard/imageboardDeleteResult.jsp"/>
			</c:if>
		</section>
	</main>
	<footer>
		<h2>copyright&copy;</h2>
	</footer>
</body>
</html>