<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ page import="chap05.User" %>

<%
User user2 = (User)pageContext.getAttribute("user");
String name = user2.getName();
int age = user2.getAge();
%>

<h1><%= age %>세 <%= name %>님 반갑습니다!</h1>
<%= user2 %><br>
<%= user2.getName() %>

<h1>${user.age }살 ${user.name }님 반갑습니다.</h1>

