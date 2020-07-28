<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap08.MemberInfo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
MemberInfo m = new MemberInfo();
m.setName("이름1");
%>
<c:set var="m" value="<%= m %>" />
<c:set var="name" value="#{m.name}" /> <%-- 이 시점에는 값 생성하지 않음  --%>
<% m.setName("이름2"); %>
${name} <%-- 사용될 때 값 계산, "이름2" 출력 --%>
<% m.setName("이름3"); %>
${name} <%-- 사용될 때 값 계산, "이름3" 출력 --%>