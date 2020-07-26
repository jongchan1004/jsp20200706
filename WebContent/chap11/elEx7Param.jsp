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

<%--
${param }
${paramValues } -> 배열 리턴
 --%>
 
<h1>
Expression: <%= request.getParameter("name") %>,
param.name: ${param.name } <br /><%--첫번째 값 리턴 --%>
<%-- request.parameter("name"): ${pageContext.request.parameter("name") } 아무것도 출력 안됨. 아래와 같이 해야 됨--%>
pageContext.request.getParameter("name"): ${pageContext.request.getParameter("name") }
</h1>

<h1>
paramValues.name[0]: ${paramValues.name[0] }
</h1>
<h1>
paramValues.name[1]: ${paramValues.name[1] }
</h1>
</body>
</html>