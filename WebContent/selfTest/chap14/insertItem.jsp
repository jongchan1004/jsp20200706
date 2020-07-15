<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>

<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String idValue = request.getParameter("id");

Connection conn = null;
PreparedStatement pstmtItem = null;
PreparedStatement pstmtDetail = null;

String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" + 
				"useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Seoul";
String dbUser = "jspexam";
String dbPass = "jsppw";

Throwable occuredException = null;

try {
	int id = Integer.parseInt(idValue);
	
	conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
	conn.setAutoCommit(false);
	
	pstmtItem = conn.prepareStatement("insert into ITEM values (?,?)");
	pstmtItem.setInt(1,id);
	pstmtItem.setString(2,"상품 이름" + id);
	pstmtItem.executeUpdate();
	
	if(request.getParameter("error") != null){
		throw new Exception("의도적 익셉션 발생");
	}
	
	pstmtDetail = conn.prepareStatement("insert into ITEM_DETAIL values (?,?)");
	pstmtDetail.setInt(1,id);
	pstmtDetail.setString(2,"상세 설명" + id);
	pstmtDetail.executeUpdate();
	
	conn.commit();
}catch(Throwable e){
	if(conn != null){
		try {
			conn.rollback();
		}catch(SQLException ex){}
	}
	occuredException = e;
}finally {
	if(pstmtItem != null)
		try {pstmtItem.close();} catch(SQLException ex){}
	if(pstmtDetail != null)
		try {pstmtDetail.close();} catch(SQLException ex){}
	if(conn != null) try {conn.close();} catch(SQLException ex){}
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

<% if(occuredException != null) { %>
에러가 발생하였음: <%= occuredException.getMessage() %>
<% } else { %>
데이터가 성공적으로 들어감
<% } %>

</body>
</html>