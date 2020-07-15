<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>

<%
request.setCharacterEncoding("utf-8");

String memberID = request.getParameter("memberID");
String password = request.getParameter("password");
String name = request.getParameter("name");
String email = request.getParameter("email");

Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = null;
PreparedStatement pstmt = null;

try {
	String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" +
					"useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Seoul";
	String dbUser = "jspexam";
	String dbPass = "jsppw";
	
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	pstmt = conn.prepareStatement("insert into MEMBER values (?,?,?,?)");
	pstmt.setString(1, memberID);
	pstmt.setString(2, password);
	pstmt.setString(3, name);
	pstmt.setString(4, email);
	
	pstmt.executeUpdate();
}finally {
	if(pstmt != null) try {pstmt.close();}catch(SQLException ex){}
	if(conn != null) try {conn.close();}catch(SQLException ex){}
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

MEMBER 테이블에 새로운 레코드를 삽입했습니다.

</body>
</html>