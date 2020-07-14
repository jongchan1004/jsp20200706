<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%
request.setCharacterEncoding("utf-8");

String memberID =  request.getParameter("memberID");
String name = request.getParameter("name");

int updateCount = 0;

Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = null;
Statement stmt = null;

try {
	String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?serverTimezone=Asia/Seoul";
	String dbUser = "jspexam";
	String dbPass = "jsppw";
	
	String query = "update MEMBER set NAME = '" + name + 
				"' where MEMBERID = '" + memberID + "'";
	
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	stmt = conn.createStatement();
	updateCount = stmt.executeUpdate(query);
}catch(SQLException ex){
	out.println(ex.getMessage());
	ex.printStackTrace();	
}finally {
	if(stmt != null) try {stmt.close();} catch(SQLException ex){}
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

<% if(updateCount > 0){ %>
<%= memberID %>의 이름을 <%= name %>(으)로 변경
<% } else { %>
<%= memberID %> 아이디가 존재하지 않음
<% } %>

</body>
</html>