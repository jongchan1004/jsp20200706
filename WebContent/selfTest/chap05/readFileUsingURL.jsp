<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>
<!DOCTYPE html>
<html>
<head>
<title>application 기본 객체 사용하여 자원 읽기2</title>
</head>
<body>

<%
	String resourcePath = "/selfTest/chap05/notice.txt";
	char[] buff = new char[128];
	int len = -1;
	URL url = application.getResource(resourcePath);
	//System.out.println(url); //file:/C:/workspace_jee/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/myjsp/selfTest/chap05/notice.txt
	try (InputStreamReader br = new InputStreamReader(url.openStream(), "UTF-8")) {
		while ((len = br.read(buff)) != -1) {
			out.print("URL getResource: "+new String(buff, 0, len));
		}
	} catch (IOException ex) {
		out.println("익셉션 발생: "+ex.getMessage());
	}
%>

</body>
</html>