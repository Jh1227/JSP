package ex01;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 *  # HttpServlet class
 *  - GenericServlet 을 상속 받아 HTTP 프로토콜을 사용하는 웹 브라우저에서 서블릿 기능을 수행합니다
 *  
 *  # 서블릿 life cycle
 *  - 초기화 : init()
 *    > 서블릿 요청시 맨 처음 한번만 호출됩니다
 *    
 *    작업수행 : doGet(), doPost()
 *    > 서블릿 요청시 매번 호출됩니다
 *      실제로 클라이언트가 요청하는 작업을 수행합니다
 *      
 *    종료 : destroy()
 *    > 서블릿이 기능을 수행하고 메모리에서 소멸될 때 수행합니다
 *    
 *  # 서블릿 생성 과정
 *  - 1. 사용자 정의 서블릿 클래스 생성
 *    2. 서블릿 메서드 구현
 *    3. 서블릿 맵핑 작업
 *    4. 웹 브라우저에서 서블릿 맵핑 이름으로 요청
 *    
 *  # 서블릿 맵핑
 *  - web.xml 파일에서 설정
 *    > Java EE Tools -> Generate Deployment Descriptor Stub
 *  - <servlet> , <servlet-mapping> 태그 이용
 */

public class LifeCycle extends HttpServlet {

	// 최초 요청시 한번만 실행
	public void init(ServletConfig config) throws ServletException {
		System.out.println("- init() run -");
	}
	
	// 요청시마다 실행
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("- doGet() run -");
	}
	
	// 종료
	public void destroy() {
		System.out.println("- destroy() run -");
	}

}
