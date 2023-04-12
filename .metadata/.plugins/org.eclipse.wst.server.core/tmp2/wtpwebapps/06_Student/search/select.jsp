
<!-- search/select.jsp -->

<%@page import="java.util.List"%>
<%@page import="school.dao.SchoolDAO"%>
<%@page import="school.dto.SchoolDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	SchoolDAO dao = new SchoolDAO();
	List<SchoolDTO> list = dao.getList();
	String code = null;
%>
<%@ include file ="/layout/header.jsp" %>
	<br>
	<div align ="center">
	<%if(list == null) {%>
		<h2>데이터가 없습니다!!!!</h2>
	<%} else {%>
		<table border ="1">
			<tr>
				<th width ="120px"> 이 름 </th>
				<th width ="140px"> VALUE </th>
				<th width ="140px"> CODE </th>
			</tr>
			<%for(SchoolDTO dto : list) {%>
				<tr>
					<td><%=dto.getName() %></td>
					<td><%=dto.getValue() %></td>
					<td>
						<%
						switch(dto.getCode()){
						case 1:
							code="학생"; break;
						case 2:
							code="교수"; break;
						case 3:
							code="직원"; break;
						}
						%>
						<%=code %>
					</td>
				</tr>
			<%}  %>
		</table>
	<%} %>
	</div>	
<%@ include file ="/layout/footer.jsp" %>