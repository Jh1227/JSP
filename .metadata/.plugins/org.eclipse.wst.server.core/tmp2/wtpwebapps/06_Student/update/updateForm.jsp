
<!-- update/updateForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="/layout/header.jsp" %>
	<div align ="center">
		<h2>정보 수정</h2>
		<br>
		<form name ="update" action ="update.jsp" method ="post">
			<table border ="1" width ="300px">
				<tr>
					<th width ="100px">수정 이름</th><td><input type ="text" name ="name"></td>
				</tr>
				<tr>
					<th>수정 값</th><td><input type ="text" name ="value"></td>
				</tr>
				<tr>
					<th>수정 코드</th>
					<td>
						<select name ="code">
							<option value ="1">학생</option>
							<option value ="2">교수</option>
							<option value ="3">직원</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan ="2" align ="center">
						<input type ="button" value ="완료" onclick ="check()"> &nbsp;
						<input type ="reset" value ="다시 작성">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<!-- script -->
	<script>
		function check(){
			if(document.update.name.value == ""){
				alert("수정 이름을 입력하세요!");
				document.update.name.focus();
			} else if(document.update.value.value == ""){
				alert("수정 값을 입력하세요!");
				document.update.value.focus();
			} else {
				document.update.submit();
			}
		}
	</script>
<%@ include file ="/layout/footer.jsp" %>