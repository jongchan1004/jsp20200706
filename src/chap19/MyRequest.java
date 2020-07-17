package chap19;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class MyRequest extends HttpServletRequestWrapper {
	
	public MyRequest(HttpServletRequest request) {
		super(request);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getParameter(String name) {
		if (name.contentEquals("name")) {
			String n = super.getParameter("name");
			if(n == null) {
				return "defualt name";
			} else {
				return n;
			}
		}
		
		return super.getParameter(name);
	}
	
}
