<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="selfTest.Member" %>
<%@ page import="java.util.*" %>
<%
List<Member> memberList = Arrays.asList(
		new Member("홍길동", 20), new Member("이순신", 19),
		new Member("유관순", 19), new Member("왕건", 42)
		);
request.setAttribute("members", memberList);
%>
${ members.stream()
	.sorted((x1,x2) -> x1.age<x2.age ? -1: 1)
	.map(x->x.name)
	.toList() } <br />

${ members.stream()
	.sorted((x1,x2) -> x1.age.compareTo(x2.age))
	.map(x->x.name)
	.toList() } <br />

${ vals = [20,17,30,2,9,23];
	sortedVals = vals.stream()
		.sorted((x1,x2) -> x1<x2 ? 1: -1)
		.toList()}
