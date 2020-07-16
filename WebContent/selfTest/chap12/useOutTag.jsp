<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.IOException, java.io.FileReader" %>

<%
FileReader reader = null;
try {
	//String path = request.getParameter("path");
	String path = "/selfTest/chap12/useIfTag.jsp";
	reader = new FileReader(getServletContext().getRealPath(path)); //절대경로
%>

<pre>
소스 코드 = <%= path %>
<c:out value="<%= reader %>" escapeXml="true" /> <%--true설정시 파일내용 그래도 보임 --%>
</pre>

<%
}catch(IOException ex){
%>
에러: <%= ex.getMessage() %>
<%
}finally {
	if(reader != null)
		try{
			reader.close();
		}catch(IOException ex){}
}
%>
