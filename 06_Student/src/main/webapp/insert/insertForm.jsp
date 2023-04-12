
<!-- insert/insertForm.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int code = Integer.parseInt(request.getParameter("code"));
	String title = null;
	switch(code){
	case 1:
		title = "학 번"; break;
	case 2:
		title = "과 목"; break;
	case 3:
		title = "부 서"; break;
	} 
	//out.println(code + " - " + title);
%>
<%@ include file ="/layout/header.jsp" %>
	<div align ="center">
		<h2>정보 입력</h2>
		<form name ="input" action ="insert.jsp" method ="post">
			<input type ="hidden" name ="code" value ="<%=code %>">
			<table border ="1" width ="300px">
				<tr>
					<th width ="100px"> 이 름 </th><td><input type ="text" name ="name"></td>
				</tr>
				<tr>
					<th width ="100px"> <%=title %> </th><td><input type ="text" name ="value"></td>
				</tr>
				<tr>
					<td colspan ="2" align ="center">
						<input type ="button" value ="완료" onclick ="check()"> &nbsp;
						<input type ="reset" value ="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<!-- script -->
	<script type="text/javascript">
		function check(){
			if(document.input.name.value==""){
				alert("이름을 입력하세요!");
				document.input.name.focus();
			} else if(document.input.value.value==""){
				alert("<%=title %>을 입력하세요!");
				document.input.value.focus();
			} else {
				document.input.submit();
			}
		} 
	</script>
	
<%@ include file ="/layout/footer.jsp" %>