/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.71
 * Generated at: 2023-04-05 03:09:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import board.dto.BoardDTO;
import java.util.ArrayList;
import board.dao.BoardDAO;

public final class boardList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("board.dao.BoardDAO");
    _jspx_imports_classes.add("board.dto.BoardDTO");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!-- board/boardList.jsp -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>boardList.jsp</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("table, th, td { border: 1px solid black; border-collapse: collapse; }\r\n");
      out.write("td { text-align: center; }\r\n");
      out.write("#paging_block { width: 1000px; text-align: center; }\r\n");
      out.write("#paging { color: black; text-decoration: none; }\r\n");
      out.write("#currentPaging { color: red; text-decoration: underline; }\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<h1>글목록</h1>\r\n");
      out.write("	<br>\r\n");
      out.write("	<table>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th width =\"100px\"> 글번호 </th>\r\n");
      out.write("			<th width =\"500px\"> 제 목 </th>\r\n");
      out.write("			<th width =\"150px\"> 작성자 </th>\r\n");
      out.write("			<th width =\"150px\"> 작성일 </th>\r\n");
      out.write("			<th width =\"100px\"> 조회수 </th>\r\n");
      out.write("		</tr>\r\n");
      out.write("		");
for(BoardDTO boardDTO : list) {
      out.write("\r\n");
      out.write("		<tr>\r\n");
      out.write("			<td>");
      out.print(boardDTO.getSeq() );
      out.write("</td>\r\n");
      out.write("			<td>\r\n");
      out.write("				<a href =\"#\" onclick =\"isLogin(");
      out.print(boardDTO.getSeq() );
      out.write(")\"> ");
      out.print(boardDTO.getSubject() );
      out.write("</a>\r\n");
      out.write("			</td>\r\n");
      out.write("			<td>");
      out.print(boardDTO.getName() );
      out.write("</td>\r\n");
      out.write("			<td>");
      out.print(boardDTO.getLogtime() );
      out.write("</td>\r\n");
      out.write("			<td>");
      out.print(boardDTO.getHit() );
      out.write("</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		");
} 
      out.write("\r\n");
      out.write("	</table>\r\n");
      out.write("	<br><br>\r\n");
      out.write("	\r\n");
      out.write("	<!-- 페이징 -->\r\n");
      out.write("	<div id =\"paging_block\">\r\n");
      out.write("		");
if(startPage > block) {
      out.write("\r\n");
      out.write("			[ <a href =\"boardList.jsp?pg=");
      out.print(startPage - 1);
      out.write("\" id =\"paging\"> 이전 </a> ]\r\n");
      out.write("		");
} 
      out.write("\r\n");
      out.write("		");
for(int i=startPage; i<=endPage; i++) {
      out.write("\r\n");
      out.write("			");
if(i == pg) {
      out.write("\r\n");
      out.write("				[ <a href =\"boardList.jsp?pg=");
      out.print(i);
      out.write("\" id =\"currentPaging\"> ");
      out.print(i );
      out.write(" </a> ]\r\n");
      out.write("			");
} else {
      out.write("\r\n");
      out.write("				[ <a href =\"boardList.jsp?pg=");
      out.print(i);
      out.write("\" id =\"paging\"> ");
      out.print(i );
      out.write(" </a> ]\r\n");
      out.write("			");
} 
      out.write("\r\n");
      out.write("		");
} 
      out.write("\r\n");
      out.write("		");
if(endPage < totalPage) {
      out.write("\r\n");
      out.write("			[ <a href =\"boardList.jsp?pg=");
      out.print(endPage + 1);
      out.write("\" id =\"paging\"> 다음 </a> ]\r\n");
      out.write("		");
} 
      out.write("\r\n");
      out.write("	</div>\r\n");
      out.write("	<br><br>\r\n");
      out.write("	<button onclick =\"location.href='../index.jsp'\"> Main </button>\r\n");
      out.write("	\r\n");
      out.write("	<!-- script -->\r\n");
      out.write("	<script type=\"text/javascript\">\r\n");
      out.write("		function isLogin(seq){\r\n");
      out.write("			");
if(session.getAttribute("memberId")==null) {
      out.write("\r\n");
      out.write("				alert(\"로그인하세요..\");\r\n");
      out.write("			");
} else {
      out.write("\r\n");
      out.write("				location.href=\"boardView.jsp?seq=\"+seq+\"&pg=\"+");
      out.print(pg);
      out.write(";\r\n");
      out.write("			");
} 
      out.write("\r\n");
      out.write("		}\r\n");
      out.write("	</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}