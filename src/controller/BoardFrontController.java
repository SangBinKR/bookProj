package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.BoardWriteProAction;
import vo.ActionForward;

@WebServlet("*.bo") // 서블릿 주소중 xxx.bo주소에 대한 요청을 전달받아 처리
public class BoardFrontController extends HttpServlet {
   
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 서블릿 요청시 get방식또는 post방식 요청을 공통으로 처리하기위해 doGet과 doPost에서 호출하는 메서드
		// 파라미터로 request객체와 response 객체를 전달 받음
		
		// Post방식 요청에 대한 한글처리
		request.setCharacterEncoding("UTF-8");
		
		// Servlet주소를 가져오기
		String command = request.getServletPath();
		System.out.println("요청 서블릿 주소 : " + command); // 1. 내가 검색한거 띄우고
		
		// 각 요청 처리에 필요한 객체를 다루는 변수 선언
		// Action 패키지의 interface
		Action action = null; // => 이녀석은 어...
		ActionForward forward = null; // => path(URL경로), redirect(방식설정) 
		
		// if문을 사용하여 각 서블릿 주소 판별 및 각 요청 처리를 위한 작업 요청
		// 1. BoardWriteForm.bo 요청에 대한 처리
		
		if(command.equals("/FreeBoardWriteForm.bo")) { // 슬래쉬(/) 가 꼭 붙어야한다. // BoardWriteForm.bo 이렇게불러왔을때
			/*
			 * 글쓰기 페이지에 대한 요청은 db갖다올필요없음 비즈니스 로직없이 
			 * View 페이지로(JSP) 바로 포워딩 작업 수행
			 * 이때, 기존 서블릿 주소 그대로 유지되어야 하므로 Dispatcher방식으로 포워딩한다.
			 * Dispatcher방식을 쓰려면 ActionForward객체에 redirect변수값을 false 로 설정
			 * false로 설정한다는건 boolean타입 변수 기본값이 false이므로 별도 설정필요없음
			 * 따라서 포워딩 주소만 지정하면 됨
			 * 그럼 포워딩 주소는 board폴더 내의 qna_board_write.jsp가 되는것
			 * 
			 */
			// 1. ActionForward 객체 생성 (변수는 이미 선언되어 있음)
			forward = new ActionForward(); // ActionForward객체불러와서 [
			// 2. 포워딩 경로 설정
			forward.setPath("/sub2/free_board_writeForm.jsp"); // path위치 설정 => BoardWriteForm.bo 이렇게불러왔을때 qna_board_write.jsp"여기로감
			// 3. 포워딩 방식 설정(Dispatcher 방식) // redirect false기본값이니까 dispatcher 방식
//			forward.setRedirect(false); // 기본값이 false이므로 설정 생략 가능
			
			
		} else if(command.equals("/BoardWritePro.bo")) { // BoardWritePro.bo 서블릿 요청에 대한 처리 // 이렇게불러오면
			// 1. BoardWriteProAction 클래스 객체생성 후 execute() 메서드 호출
			// => 모든 Action 클래스는 Action 인터페이스를 구현하므로 다형성 활용가능
			action = new BoardWriteProAction(); // ?BoardWriteProAction 얘만 계속바뀐다
			
			try {
				// 2. Action 클래스의 excute() 메서드 호출
				// => 리턴되는 ActionForward 객체 전달 받기 (직접 생성하지 않음!)
				// throws에 의해 예외가 전달되므로 try ~ catch 필요 
				forward = action.excute(request, response); // 리턴되는것 받기만 하면됨 action클래스에서 만들어낼것
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			
		} else if(command.equals("/BoardList.bo")) {
			System.out.println("BoardList.bo로 포워딩!");
		}
		
		
		//-------------------------------------------------------------------------------------------
		// 공통적인 forwarding 작업 설정해야함
		// 기본설정후 공통적으로 수행할 포워딩 작업을 여기에다 명시
		// 1. ActionForward 객체 존재 여부 판별 
		// 없으면 수행못함 null 들어가있음 언제수행? 객체가 존재할때 포워딩 수행
		if(forward != null) {
			// 2. ActionForward 객체 내의 포워딩 방시에 따라 각각의 포워딩 수행
			// => Redirect 방식 : isRedirect() == true,
			// Dispatcher 방식 : isRedirect() == false
			// redirect방식이냐 아니냐 만듬
			if(forward.isRedirect()) {// Redirect방식일 경우
				// 3. Redirect방식일 경우
				// response 객체의 sendRedirect() 메서드를 호출하여 포워딩
				// => 파라미터 : 포워딩 할 URL
				response.sendRedirect(forward.getPath()); // 경로 getPath에 들어가있음
			} else { // Dispatcher방식일 경우
				// 4-1. dispatcher방식일때는 request객체의 getRequestDispatcher()메서드를 호출하여
				// RequestDispatcher 객체를 리턴 받기
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				// 4-2. RequestDispatcher 객체의 forward() 메서드를 호출하여
				//		포워딩 수행(파라미터 : request, response 객체)
				dispatcher.forward(request, response);
			}
			
			//-------------------------------------------------------------------------------------------
			
		}
		
		
		
		
		
		
	}
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 서블릿 요청시 get방식에대한 요청을 처리하는것
		// 파라미터로 request객체와 response 객체를 전달 받음
		doProcess(request, response);
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 서블릿 요청시 post방식에대한 요청을 처리하는것
		// 파라미터로 request객체와 response 객체를 전달 받음
		doProcess(request, response);
	}

}
