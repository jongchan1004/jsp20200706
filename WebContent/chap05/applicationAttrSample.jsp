<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
request.setCharacterEncoding("utf-8");
Object o = application.getAttribute("list");
if(o == null){
	ArrayList<String> list = new ArrayList<>();
	application.setAttribute("list", list);
}

%>
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
<form action="" method="post">
<input type="text" name="name" /><br>
<input type="submit" value="등록"/>
</form>
<ul>
<!-- generic type의 경우 instanceof는 안됨 -->
<%
Object ol = application.getAttribute("list");

ArrayList<String> l = (ArrayList<String>)ol;

String name = request.getParameter("name");
if(name != null){
	l.add(name);
}

for(String n : l){
	out.print("<li>");
	out.print(n);
	out.print("</li>");
}
%>
</ul>
</body>
</html>