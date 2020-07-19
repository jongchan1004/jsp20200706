<%@ page language="java" contentType="text/event-stream; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%
Date time = new Date();
%>
data:<%= time.toLocaleString()+"\n\n" %>