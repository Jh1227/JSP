
<!-- imageboard/imageboardViewResult.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imageboardViewResult.jsp</title>
<style type="text/css">
table, td { border: 1px solid gray; border-collapse: collapse; padding: 4px; }
</style>
</head>
<body>
	<h1>상품 확인</h1>
	<br>
	<table>
		<tr>
			<td rowspan="5">
				<img src="../storage/${imageFile }" width="200px" height="200px">
			</td>
		</tr>
		<tr>
			<td width ="300px"> 상품명 : ${imageName }</td>
		</tr>
		<tr>
			<td width ="300px"> 가격 : ${imagePrice }</td>
		</tr>
		<tr>
			<td width ="300px"> 수량 : ${imageQty }</td>
		</tr>
		<tr>
			<td width ="300px"> 합계 : ${imagePrice * imageQty }</td>
		</tr>
		<tr>
			<td colspan="2" height="240px" valign="top">
				<pre>${imageContent }</pre>
			</td>
		</tr>
	</table>
	<br><br>
	<button onclick ="location.href='imageboardList.jsp?pg=${pg }'"> 상품 목록 </button> &nbsp;
	<c:if test="${sessionScope.memberId != null }">
		<button onclick="location.href='imageboardModifyReady.jsp?seq=${seq}&pg=${pg }'"> 수 정 </button> &nbsp;
		<button onclick="location.href='imageboardDelete.jsp?seq=${seq}&pg=${pg }'"> 삭 제 </button> &nbsp;
	</c:if>
</body>
</html>