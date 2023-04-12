package ex04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * annotation
 * - 컴파일러에게 코드 문법 에러를 체크하도록 정보를 제공합니다
 * - 실행시(런타임시) 특정 기능을 실행하도록 정보를 제공합니다
 */

// annotation 을 이용해서 서블릿 등록
@WebServlet("/memberServlet")
public class MemberServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("userName");
		String gender = request.getParameter("gender");
		String[] arrHobby = request.getParameterValues("hobby");
		String[] arrSubject = request.getParameterValues("subject");
		
		String hobby = "";
		if(arrHobby != null) {
			for(int i = 0; i < arrHobby.length; i++) {
				if(arrHobby[i] != null) {
					hobby += arrHobby[i] + " ";
				}
			}
		}
		
		String subject = "";
		if(arrSubject != null) {
			for(int i = 0; i < arrSubject.length; i++) {
				if(arrSubject[i] != null) {
					subject += arrSubject[i] + " ";
				}
			}
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title> 입력 내용 </title>");
		out.println("<style>");
		out.println("li { color: gray; font-size: 20px; font-weight: bold; }");
		out.println("</style>");
		out.println("</head>");
		
		out.println("<body>");
		out.println("<h2> 입력 내용 </h2>");
		out.println("<ul>");
		out.println("<li>" + name + "</li>");
		out.println("<li>" + gender + "</li>");
		out.println("<li>" + hobby + "</li>");
		out.println("<li>" + subject + "</li>");
		out.println("</ul>");
		out.println("<br><br>");
		
		out.println("<a href ='javascript:history.back();'> 이전페이지 </a>");
		
		out.println("</body>");
		out.println("</html>");
		
	}

}
