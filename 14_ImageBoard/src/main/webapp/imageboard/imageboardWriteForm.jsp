
<!-- imageboard/imageboardWriteForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imageboardWriteForm.jsp</title>
<style type="text/css">
table, th, td { border: 1px solid #333333; border-collapse: collapse; }
textarea { resize: none; }
</style>
<script type="text/javascript" src="../script/imageboardScript.js?v=1"></script>
</head>
<body>
	<h2>상품 등록</h2>
	<br>
	<form name="imageboardWriteForm" action="../imageboard/imageboardWrite.jsp" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<th width="100px"> 상품 코드 </th>
				<td width="300px"><input type="text" name="imageId" value="img_" size="50px"></td>
			</tr>
			<tr>
				<th width="100px"> 상품명 </th>
				<td width="300px"><input type="text" name="imageName"size="50px"></td>
			</tr>
			<tr>
				<th width="100px"> 상품 가격 </th>
				<td width="300px"><input type="text" name="imagePrice"size="50px"></td>
			</tr>
			<tr>
				<th width="100px"> 상품 수량 </th>
				<td width="300px"><input type="text" name="imageQty" size="50px"></td>
			</tr>
			<tr>
				<th width="100px"> 상품 설명 </th>
				<td width="300px"><textarea rows="10" cols="52" name="imageContent"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="file" name="imageFile" size="50px"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등록" onclick="imageWrite()"> &nbsp;
					<input type="reset" value="다시작성">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>