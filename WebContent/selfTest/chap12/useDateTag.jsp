<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<c:set var="now" value="<%= new java.util.Date() %>" />
<fmt:formatDate value="${now}" type="date" dateStyle="full" /> <br />
<fmt:formatDate value="${now}" type="date" dateStyle="short" /> <br />
<fmt:formatDate value="${now}" type="time" /> <br />
<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /> <br />
<fmt:formatDate value="${now}" pattern="z a h:mm" /> <br />
<hr />

<%--pattern은 value문자열 형태를 parser에게 알려주는 의미임 --%>
<fmt:parseDate value="2020-07-13 16:53:59" pattern="yyyy-MM-dd HH:mm:ss" var="date" />
파싱한 날짜: ${date} <br />
<fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full" />
</body>
</html>