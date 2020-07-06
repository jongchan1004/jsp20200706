<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="container">
	<div class="row">
		<div class="col">
		
<%
	int dan = Integer.parseInt(request.getParameter("dan"));
%>
<h2><%= dan %>단</h2>
<ul class="list-group">
<%
	for(int i=1; i<=9; i++){
		//System.out.println(dan + "*" + i + "=" + (dan*i));
%>
		<li class="list-group-item">
			<b class="h5"><%= dan %></b>
			<i class="fas fa-times"></i>
			<b class="h5"><%= i %></b>
			<i class="fas fa-equals"></i>
			<b class="h5"><%= dan*i %></b>
		</li>
<%
	}
%>
</ul>
		</div>
	</div>
</div>
</body>
</html>