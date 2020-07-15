<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<%
String memberID = request.getParameter("memberID");
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

<%
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try {
	String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" + 
				"useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Seoul";
	String dbUser = "jspexam";
	String dbPass = "jsppw";
	String query = "select * from MEMBER where MEMBERID = '" + memberID + "'";
	
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	stmt = conn.createStatement();
	
	rs = stmt.executeQuery(query);
	if(rs.next()){
%>
<table border="1">
<tr>
	<td>아이디</td><td><%= memberID %></td>
</tr>
<tr>
	<td>암호</td><td><%= rs.getString("PASSWORD") %></td>
</tr>
<tr>
	<td>이름</td><td><%= rs.getString("NAME") %></td>
</tr>
<tr>
	<td>이메일</td><td><%= rs.getString("EMAIL") %></td>
</tr>
</table>
<%
	}else {
%>
<%= memberID %>에 해당하는 정보가 존재하지 않습니다.
<%
	}
}catch(SQLException ex){
%>
에러 발생: <%= ex.getMessage() %>
<%
}finally {
	if(rs != null) try {rs.close();} catch(SQLException ex){}
	if(stmt != null) try {stmt.close();} catch(SQLException ex){}
	if(conn != null) try {conn.close();} catch(SQLException ex){}
}
%>

</body>
</html>