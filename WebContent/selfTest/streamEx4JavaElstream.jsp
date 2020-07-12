<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.stream.*" %>
<%
List<String> lst1 = Arrays.asList("1","2","3");
request.setAttribute("lst_1", lst1);

// 자바8의 stream() 이용
Stream<String> str = lst1.stream();
//1안 Collector<String,?,List<String>> collector = Collectors.toList();
//2안 Collector<String,?,List<String>> collector = Collectors.toCollection(ArrayList::new);
//List<String> lst2 = str.collect(collector);
//3안 List<String> lst2 = str.collect(Collectors.toList());
//4안
List<String> lst2 = str.collect(Collectors.toCollection(ArrayList::new));
request.setAttribute("lst_2", lst2);
%>

<%--EL의 stream사용 --%>
${ lst_1.stream().toList() } <br />

<%--자바의 stream사용 --%>
${ lst_2 }
