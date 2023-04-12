package ex03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ParamServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 웹 브라우저에서 전송된 데이터 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		
		// 전송 데이터
		// - getParameter() 메서드를 사용해서 <input> 태그의 name 속성값으로 전송된 value 를 가져옵니다
		String name = request.getParameter("userName");
		String stnAge = request.getParameter("userAge");
		int age = Integer.parseInt(stnAge);
		
		// 응답
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title> 결과 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println(name + "님의 나이 : " + age + "세<br><br>");
		if(age > 19) {
			out.println("성인");
		} else {
			out.println("미성년자");
		}
		out.println("</body>");
		out.println("</html>");
		
		
		
	}

}
