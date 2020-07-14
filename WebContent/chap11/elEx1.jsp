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
문법: ${expr} --> expr(식) 내용이 출력됨

expr는 총 2가지: 11개의 기본객체(p.254표 참조), 또는 attribute(4개의 scope에 바인딩할 수 있음)

EL의 기본객체(11개):
	pageContext
	pageScope
	requestScope
	sessionScope
	applicationScope
	param
	paramValues
	header
	headerValues
	cookie
	initParam
--%>
 
<%
pageContext.setAttribute("ex1", "hello");
%>
${ex1}
<h1>${ex1}</h1>
<h2>${ex1}</h2>

<ul>
<li>pageContext: ${pageContext }</li>
<li>pageScope: ${pageScope }</li>
<li>requestScope: ${requestScope }</li>
<li>sessionScope: ${sessionScope }</li>
<li>applicationScope: ${applicationScope }</li>
<li>param: ${param }</li>
<li>paramValues: ${paramValues }</li>
<li>header: ${header }</li>
<li>headerValues: ${headerValues }</li>
<li>cookie: ${cookie }</li>
<li>initParam: ${initParam }</li>
</ul>
</body>
</html>