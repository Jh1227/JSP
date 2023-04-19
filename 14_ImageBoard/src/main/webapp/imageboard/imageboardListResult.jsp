
<!-- imageboard/imageboardListResult.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imageboardListResult.jsp</title>
<style type="text/css">
h1 { text-align: center; }
table, th, td { border: 1px solid black; border-collapse: collapse; }
td { text-align: center; }
#paging_block { width: 1000px; text-align: center; }
#paging { color: black; text-decoration: none; }
#currentPaging { color: red; text-decoration: underline; }
</style>
</head>
<body>
	<h1>상품 목록</h1>
	<br>
	<table>
		<tr>
			<th width ="40px"> 번 호 </th>
			<th width ="100px"> 이미지 </th>
			<th width ="200px"> 상품명 </th>
			<th width ="120px"> 가 격 </th>
			<th width ="120px"> 수 량 </th>
			<th width ="120px"> 합 계 </th>
		</tr>
		<c:forEach var="imageboardDTO" items="${list }">
		<tr>
			<td>${imageboardDTO.seq }</td>
			<td>
				<a href="imageboardView.jsp?seq=${imageboardDTO.seq }&pg=${pg }">
					<img src="../storage/${imageboardDTO.imageFile }" width="80px" height="80px">
				</a>
			</td>
			<td>${imageboardDTO.imageName }</td>
			<td>${imageboardDTO.imagePrice }</td>
			<td>${imageboardDTO.imageQty }</td>
			<td>${imageboardDTO.imagePrice * imageboardDTO.imageQty }</td>
		</tr>
		</c:forEach>
	</table>
	<br><br>
	
	<!-- 페이징 -->
	<div id ="paging_block">
		<c:if test="${startPage > block }">
			[ <a href ="imageboardList.jsp?pg=${startPage-1 }" id ="paging"> 이전 </a> ]
		</c:if>
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<c:if test="${i == pg }">
				[ <a href ="imageboardList.jsp?pg=${i }" id ="currentPaging"> ${i } </a> ]
			</c:if>
			<c:if test="${i != pg }">
				[ <a href ="imageboardList.jsp?pg=${i }" id ="paging"> ${i } </a> ]
			</c:if>
		</c:forEach>
		<c:if test="${endPage < totalPage }">
			[ <a href ="imageboardList.jsp?pg=${endPage+1 }" id ="paging"> 다음 </a> ]
		</c:if>
	</div>
	<br><br>
	<button onclick ="location.href='../main/index.jsp'"> Main </button>
	
	<!-- script -->
	<script type="text/javascript">
		function isLogin(seq, pg){
			<%if(session.getAttribute("memberId")==null) {%>
				alert("로그인하세요..");
			<%} else {%>
				location.href="boardView.jsp?seq="+seq+"&pg="+pg;
			<%} %>
		}
	</script>
</body>
</html>