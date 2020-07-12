<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
java.util.Map<String, String> map = new java.util.HashMap<>();
map.put("code1", "코드1");
map.put("code2", "코드2");
request.setAttribute("map", map);
%>

${ map.entrySet().stream()
	.map(entry->entry.value)
	.toList() }