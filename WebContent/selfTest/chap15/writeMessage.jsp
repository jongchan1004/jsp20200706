<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="selfTest.guestbook.model.Message" %>
<%@ page import="selfTest.guestbook.service.WriteMessageService" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="message" class="selfTest.guestbook.model.Message">
	<jsp:setProperty name="message" property="*" />
</jsp:useBean>
<%
WriteMessageService writeService = WriteMessageService.getInstance();
writeService.write(message);
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

<title>방명록 메시지 남김</title>
</head>
<body>

방명록에 메시지를 남겼습니다.
<br />
<a href="list.jsp">[목록 보기]</a>

</body>
</html>