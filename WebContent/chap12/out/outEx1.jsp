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
<%-- expr이 null이면 default attr 값 출력, escapeXml=true가 기본값
<c:out value="${expr }" default="defValue" escapeXml="true" >

p.311 true: 바꿔줌
  &nbsp;
< &lt;
> &gt;
& &amp;
' &#039; &apos;
" &#034; &quot;
--%>
<h1>
1: ${name } 님 반갑습니다.
</h1>

<h1>
<c:out value="${param.name }" />
</h1>
<h1>
2: <c:out value="${param.name }" default="guest" />님 반갑습니다.
</h1>
<hr />

<c:set var="attr1">
	<h1>hello</h1>
</c:set>

<div>
3: \${attr1 } <br />
4: ${attr1 }
</div>

5: &lt;c:out value=&quot;\${attr }&quot; /&gt; <br />
<div>
6: <c:out value="${attr1 }" />
</div>


<div>
7: <c:out value="${attr1 }" escapeXml="false"/>
</div>
</body>
</html>