<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap08.MemberInfo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
MemberInfo m = new MemberInfo();
m.setName("이름1");
%>
<c:set var="m" value="<%= m %>" />
<c:set var="name" value="${m.name}" />
<% m.setName("이름2"); %>
${name} <%-- name의 값은 "이름1" --%>

${m.getName()} <%--EL2.2부터 객체의 메서드 직접 호출 가능--%>
