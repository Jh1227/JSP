
<!-- board/boardList.jsp -->

<%@page import="board.dto.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int pg = Integer.parseInt(request.getParameter("pg"));
	
	int article = 8;								// 한 페이지 글 목록수
	int currentPage = pg;							// 현재 페이지
	int startNum = (currentPage - 1) * article + 1; // 시작 글번호
	int lastNum = startNum + article - 1;			// 마지막 글번호
	
	BoardDAO boardDAO = new BoardDAO();
	ArrayList<BoardDTO> list = boardDAO.boardList(startNum, lastNum);
	
	// 페이징
	int totalArticle = boardDAO.getTotalArticle(); 	// 전체 글수
	int totalPage = (totalArticle - 1)/article + 1; // 전체 페이지 수
	
	int block = 3; // 페이지 블록
	int startPage = (currentPage - 1)/block * block + 1;
	int endPage = startPage + block - 1;
	if(endPage > totalPage) {
		endPage = totalPage; 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList.jsp</title>
<style type="text/css">
table, th, td { border: 1px solid black; border-collapse: collapse; }
td { text-align: center; }
#paging_block { width: 1000px; text-align: center; }
#paging { color: black; text-decoration: none; }
#currentPaging { color: red; text-decoration: underline; }
</style>
</head>
<body>
	<h1>글목록</h1>
	<br>
	<table>
		<tr>
			<th width ="100px"> 글번호 </th>
			<th width ="500px"> 제 목 </th>
			<th width ="150px"> 작성자 </th>
			<th width ="150px"> 작성일 </th>
			<th width ="100px"> 조회수 </th>
		</tr>
		<%for(BoardDTO boardDTO : list) {%>
		<tr>
			<td><%=boardDTO.getSeq() %></td>
			<td>
				<a href ="#" onclick ="isLogin(<%=boardDTO.getSeq() %>)"> <%=boardDTO.getSubject() %></a>
			</td>
			<td><%=boardDTO.getName() %></td>
			<td><%=boardDTO.getLogtime() %></td>
			<td><%=boardDTO.getHit() %></td>
		</tr>
		<%} %>
	</table>
	<br><br>
	
	<!-- 페이징 -->
	<div id ="paging_block">
		<%if(startPage > block) {%>
			[ <a href ="boardList.jsp?pg=<%=startPage - 1%>" id ="paging"> 이전 </a> ]
		<%} %>
		<%for(int i=startPage; i<=endPage; i++) {%>
			<%if(i == pg) {%>
				[ <a href ="boardList.jsp?pg=<%=i%>" id ="currentPaging"> <%=i %> </a> ]
			<%} else {%>
				[ <a href ="boardList.jsp?pg=<%=i%>" id ="paging"> <%=i %> </a> ]
			<%} %>
		<%} %>
		<%if(endPage < totalPage) {%>
			[ <a href ="boardList.jsp?pg=<%=endPage + 1%>" id ="paging"> 다음 </a> ]
		<%} %>
	</div>
	<br><br>
	<button onclick ="location.href='../index.jsp'"> Main </button>
	
	<!-- script -->
	<script type="text/javascript">
		function isLogin(seq){
			<%if(session.getAttribute("memberId")==null) {%>
				alert("로그인하세요..");
			<%} else {%>
				location.href="boardView.jsp?seq="+seq+"&pg="+<%=pg%>;
			<%} %>
		}
	</script>
</body>
</html>