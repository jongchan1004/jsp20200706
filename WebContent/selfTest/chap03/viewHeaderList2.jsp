<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<%
	Enumeration<String> headerEnum = request.getHeaderNames();
	while(headerEnum.hasMoreElements()){
		String headerName = headerEnum.nextElement();
		String headerValue = request.getHeader(headerName);
%>
<%= headerName %> = <%= headerValue %> <br>
<%
	}
%>
<hr />
<%
	Enumeration<String> headerEnum1 = request.getHeaderNames();
	while(headerEnum1.hasMoreElements()){
		String headerName1 = headerEnum1.nextElement();
		
		Enumeration<String> headerValues = request.getHeaders(headerName1);
		while(headerValues.hasMoreElements()){
			String headerValue1 = headerValues.nextElement();
%>
			<%= headerName1 %> = <%= headerValue1 %> <br>
<%			
		}

	}
%>
</body>
</html>