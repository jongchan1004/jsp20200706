<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
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

MEMBER 테이블의 내용
<table width="100%" border="1">
<tr>
	<td>이름</td><td>아이디</td><td>이메일</td>
</tr>
<%
//1.JDBC 드라이버 로딩
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try{
	//String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" +
	//					"useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Seoul";
	String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" +
			"serverTimezone=Asia/Seoul";
	String dbUser = "jspexam";
	String dbPass = "jsppw";
	
	String query = "select * from MEMBER order by MEMBERID";
	
	//2. 데이터베이스 커넥션 생성
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
	//3. Statement 생성
	pstmt = conn.prepareStatement(query);
	
	//4. 쿼리 실행
	rs = pstmt.executeQuery();
	
	//5. 쿼리 실행 결과 출력
	while(rs.next()){
%>
<tr>
	<td><%= rs.getString("NAME") %></td>
	<td><%= rs.getString("MEMBERID") %></td>
	<td><%= rs.getString("EMAIL") %></td>
</tr>
<%
	}
}catch(SQLException ex){
	out.println(ex.getMessage());
	ex.printStackTrace();
}finally {
	//6.사용한 Statement 종료
	if(rs != null) try {rs.close();} catch(SQLException ex){}
	if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
	
	//7.커넥션 종료
	if(conn != null) try {conn.close();} catch(SQLException ex){}
}

%>
</table>

</body>
</html>