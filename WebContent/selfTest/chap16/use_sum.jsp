<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/self" %>

<!DOCTYPE html>
<html>
<head>
<title>sum 사용</title>
</head>
<body>

<tf:sum begin="1" end="10">
1-10까지 합: ${sum }
</tf:sum>

</body>
</html>