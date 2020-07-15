<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
String[] arr = {"java","html","css","jquery","bootstrap"};
request.setAttribute("list", arr);
%>
<c:forEach var="item" items="${list }">
	${item } <br />
</c:forEach>
<%--forEach가 끝나면 attr는 사라짐 --%>
forEach후: ${item }
<hr />

<c:forEach var="item" items="${list }" begin="1" end="3">
	${item } <br />
</c:forEach>
<hr />
<c:forEach var="item" items="${list }" step="2">
	${item } <br />
</c:forEach>

</body>
</html>