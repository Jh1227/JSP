
<!-- delete/deleteForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="/layout/header.jsp" %>
	<div align ="center">
		<h2>삭제 정보 입력</h2>
		<form name ="delete" action ="delete.jsp" method ="post">
			<table border ="1">
				<tr>
					<th>삭제 할 이름</th><td><input type ="text" name ="name"></td>
				</tr>
				<tr>
					<td colspan ="2" align ="center">
						<input type ="button" value ="삭제" onclick ="check()"> &nbsp;
						<input type ="reset" value ="다시 작성">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<!-- script -->
	<script>
		function check(){
			if(document.delete.name.value == ""){
				alert("삭제 할 이름을 입력하세요!")
				document.delete.name.focus();
			} else {
				document.delete.submit();
			}
		}
	</script>
<%@ include file ="/layout/footer.jsp" %>