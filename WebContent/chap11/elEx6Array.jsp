<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.lang.reflect.Array" %>
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
String[] arr = {"java", "css", "jquery"};
request.setAttribute("myArr", arr);
pageContext.setAttribute("myNum", "2");
%>

<h1>${myArr[0] }</h1>
<h1>arr[0]: <%= arr[0] %></h1>
<h1>Array.get(arr, 0): <%= (String)Array.get(arr, 0) %></h1>
<h1>Array.get(arr, 0): <%= Array.get(arr, 0) %></h1> <%--Object타입 출력 잘됨 --%>
<h1>${myArr["1"] }</h1>
<h1>${myArr[2] }</h1>
<h1>myArr[myNum]: ${myArr[myNum] }</h1>

<hr />
<ul>
<%
for(int i=0; i<arr.length; i++){
	pageContext.setAttribute("i", i);
%>
	<li>${myArr[i] }</li> <%--i를 11개 기본객체나, attr에서 찾음 --%>
<%
}
%>
</ul>

</body>
</html>