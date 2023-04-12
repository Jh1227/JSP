package ex02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 이후의 문자열을 html 로 인식하라고 지정
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title> servlet </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("Hello Servlet<br>");
		out.println("안녕하세요 서블릿");
		out.println("</body>");
		out.println("</html>");

		
	}

}
