package chap17;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap11.Member;

/**
 * Servlet implementation class ThreadServletEx1
 */
@WebServlet("/thread1")
public class ThreadServletEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private int i=0;
	private Member member = new Member();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThreadServletEx1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//i++; //instance변수값변경은 스레드때문에 위험함
		//member.setName("name"); //스레드때문에 위험함 12:06
		
		/*
		request영역 : 스레드에 안전함. 각 요청이 다른 객체. 톰캣은 각스레드마다 새로운 요청객체 할당함. request말고는 쓰는작업을 하지 말것. 불가피하게 session을 쓰는 경우는 있음
		session : 창별로 동시에 작업할 가능성이 있으므로 스레드에 안전하지 않음
		application : 여러 스레드가 동시에 작업할 수 있으므로 웬만하면 동시에 쓸 가능성이 있는 작업은 하면 안됨
		*/
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
