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
<%--
<c:url value="path" var="path1" scope="page">
반복사용시
쿼리스트링(파라미터) 자동 인코딩
세션을 유지할때도 사용(쿠키차단시 사용가능)-첫요청시 c:url태그 링크URL에 세션id가 붙어있음-> 두번째 요청시 쿠키를 가지고 오면 그 다음부터는 제거하고 보냄
--%>

<c:url value="../out/sample.jsp?name=j and&comment=k com" var="path1" />
<c:url value="../out/sample.jsp?name=한글&comment=k com" var="path2" />
<c:url value="../out/sample.jsp" var="path3">
	<c:param name="name" value="my name"/>
	<c:param name="comment" value="코멘트"/>
</c:url>
<a href="${path1 }">sample1.jsp</a> <br />
<a href="${path2 }">sample2.jsp</a> <br />
<a href="${path3 }">sample3.jsp</a> <br />

<a href="../out/sample.jsp?name=한글&comment=한글코멘트">sample4.jsp</a> <br />


</body>
</html>