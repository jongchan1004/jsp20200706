<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
List<String> list = new ArrayList<>();
list.add("java");
list.add("html");
list.add("css");
list.add(null);

request.setAttribute("mylist", list);
pageContext.setAttribute("myNum", "2");
%>

<h1>${mylist[0] }, ${mylist["0"] }</h1> <%--값으로 변환가능하면 문자열도 가능함 --%>
<h1>list.get(0): <%= list.get(0) %></h1>
<h1>${mylist[1] }</h1>
<h1>${mylist[2] }</h1>
<h1>${mylist[3] }</h1> <%--null이면 출력 안함 --%>
<h1>${mylist[4] }</h1> <%--범위넘어가면 출력 안함 --%>
<h1>mylist[myNum]: ${mylist[myNum] }</h1> <%--값이면 11개객체,attr에서 찾음 . mylist[2]가 출력됨--%>
<%-- <h1>${mylist["myNum"] }</h1> --%> <%--NumberFormatException발생. 값으로 변환가능한 것만 문자열 가능 --%>

<h1><%= ((List<String>)request.getAttribute("mylist")).get(3) %></h1> <%--null이라고 출력함 --%>

</body>
</html>