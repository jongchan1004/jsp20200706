<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
Date date = new Date();
%>

오늘은 <%= formatter.format(date) %> 입니다.