package selfTest.appB;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UploadServlet
 */
//@WebServlet("/UploadServlet")
public class UploadServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final javax.servlet.jsp.JspFactory _jspxFactory =
	          javax.servlet.jsp.JspFactory.getDefaultFactory();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		final javax.servlet.jsp.PageContext pageContext;
		javax.servlet.jsp.JspWriter out = null;
		javax.servlet.jsp.PageContext _jspx_page_context = null;
		pageContext = _jspxFactory.getPageContext(this, req, resp, null, true, 8192, true);
		_jspx_page_context = pageContext;
		out = pageContext.getOut();
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		//PrintWriter writer = resp.getWriter();
		out.println("<html><body>");
		
		String contentType = req.getContentType();
		if (contentType != null && contentType.toLowerCase().startsWith("multipart/")) {
			printPartInfo(req, out);
		} else {
			out.println("multipart가 아님");
		}
		out.println("</body></html>");
		 _jspxFactory.releasePageContext(_jspx_page_context);
	}

	private void printPartInfo(HttpServletRequest req, javax.servlet.jsp.JspWriter out) throws IOException, ServletException {
		Collection<Part> parts = req.getParts();
		for (Part part: parts) {
			out.println("<br/> name = " + part.getName());
			String contentType = part.getContentType();
			out.println("<br/> contentType = " + contentType);
			if (part.getHeader("Content-Disposition").contains("filename=")) {
				out.println("<br/> size = " + part.getSize());
				String fileName = part.getSubmittedFileName();
				out.println("<br/> filename = " + fileName);
				if (part.getSize() > 0) {
					part.write("c:/tempfiles/" + fileName);
					//part.delete();
				}
			} else {
				String value = req.getParameter(part.getName());
				out.println("<br/> value = " + value);
			}
			out.println("<hr/>");
		}
		
	}

}
