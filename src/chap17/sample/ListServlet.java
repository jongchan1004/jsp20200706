package chap17.sample;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/sample/list")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.setContentType("text/html); charset=utf-8");
//		
//		PrintWriter out = response.getWriter();
//		out.print("<h1>hello </h1>");
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/chap17/sample/list.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("포스트 요청옴");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		//
		//ServletContext app = getServletContext();
		HttpSession app = request.getSession();
		//HttpServletRequest app = request; 
		Object o = app.getAttribute("list");
		if (o == null) {
			o = new ArrayList<Item>();
			app.setAttribute("list", o);
		}
		List<Item> list = (List<Item>) o;
		Item i = new Item();
		i.setName(name);
		i.setAge(age);
		
		list.add(i);
		
		request.setAttribute("list", list);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/chap17/sample/list.jsp");
		view.forward(request, response);
	}

}


//class Item {
//	private String name;
//	private String age;
//	
//	public String getName() {
//		return name;
//	}
//	public void setName(String name) {
//		this.name = name;
//	}
//	public String getAge() {
//		return age;
//	}
//	public void setAge(String age) {
//		this.age = age;
//	}
//	
//	
//}