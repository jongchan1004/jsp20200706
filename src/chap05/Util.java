package chap05;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;

public class Util {
	public static void printGreeting2(PageContext pageContext) {
		ServletRequest request = pageContext.getRequest();
		Object val = request.getAttribute("name");
		System.out.println(val);
	}
	public static void printGreeting(PageContext pageContext) {
		HttpServletRequest request =(HttpServletRequest)pageContext.getRequest();
		JspWriter out = pageContext.getOut();
		
		String name = request.getParameter("name");
		try {
			if(name != null) {
				out.print("<h1>"+name+"님 반갑습니다."+"</h1>");
			}else {
				out.print("<h1> 손님 반갑습니다."+"</h1>");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
