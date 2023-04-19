
<!-- imageboard/imageboardModifyForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imageboardModifyForm.jsp</title>
<style type="text/css">
h1 { text-align: center; }
table, th, td { border: 1px solid black; border-collapse: collapse; padding: 4px; }
textarea { resize: none; }
</style>
<script type="text/javascript" src="../script/imageboardScript.js?v=2"></script>
</head>
<body>
	<h1>상품 정보 수정</h1>
		<br>
		<form name="imageboardModifyForm" action="../imageboard/imageboardModify.jsp" method="post" enctype="multipart/form-data">
			<input type="hidden" name="seq" value="${seq }">
			<input type="hidden" name="pg" value="${pg }">
		
			<table border="1">
				<tr>
					<th width="100px"> 상품 코드 </th>
					<td width="300px"><input type="text" name="imageId" value="${imageId }" size="50px"></td>
				</tr>
				<tr>
					<th width="100px"> 상품명 </th>
					<td width="300px"><input type="text" name="imageName" value="${imageName }"size="50px"></td>
				</tr>
				<tr>
					<th width="100px"> 상품 가격 </th>
					<td width="300px"><input type="text" name="imagePrice" value="${imagePrice }"size="50px"></td>
				</tr>
				<tr>
					<th width="100px"> 상품 수량 </th>
					<td width="300px"><input type="text" name="imageQty" value="${imageQty }" size="50px"></td>
				</tr>
				<tr>
					<th width="100px"> 상품 설명 </th>
					<td width="300px"><textarea rows="10" cols="52" name="imageContent">${imageContent }</textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="file" name="imageFile" size="50px"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="등록" onclick="imageModify()"> &nbsp;
						<input type="reset" value="다시작성">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>