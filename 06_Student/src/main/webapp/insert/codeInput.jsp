
<!-- insert/codeInput.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="/layout/header.jsp" %>
	<div align ="center">
		<h2>코드 선택</h2>
		<table width ="300px">
			<tr>
				<th>
					<button onclick ="document.location.href='/06_Student/insert/insertForm.jsp?code=1'"> 학 생 </button>
				</th>
				<th>
					<button onclick ="document.location.href='/06_Student/insert/insertForm.jsp?code=2'"> 교 수 </button>
				</th>
				<th>
					<button onclick ="document.location.href='/06_Student/insert/insertForm.jsp?code=3'"> 직 원 </button>
				</th>
			</tr>
		</table>
	</div>
<%@ include file ="/layout/footer.jsp" %>