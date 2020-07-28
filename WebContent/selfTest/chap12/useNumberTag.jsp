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

<c:set var="price" value="10000" />
<fmt:formatNumber value="${price}" type="number" var="numberType" />
<br />
통화(currencySymbol): <fmt:formatNumber value="${price}" type="currency" currencySymbol="￦"/> <br />
통화(currencyCode): <fmt:formatNumber value="${price}" type="currency" currencyCode="KRW"/>
<br />
퍼센트: <fmt:formatNumber value="${price}" type="percent" groupingUsed="true" />
<br />
숫자: ${numberType}
<br />
패턴: <fmt:formatNumber value="${price}" pattern="00000000.00"/>
<br />
<hr />
<fmt:parseNumber value="1,100.12" pattern="0,000.00" var="num" /> <%--pattern은 value 문자열 형태를 알려주는 것일 뿐 --%>
문자열-숫자변환: ${num} <br />
패턴: <fmt:formatNumber value="${num}" pattern="0,000.00" />
</body>
</html>