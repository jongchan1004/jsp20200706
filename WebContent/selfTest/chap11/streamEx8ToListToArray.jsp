<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="selfTest.Member" %>
<%@ page import="java.util.*" %>
<%
List<Member> memberList = Arrays.asList(
		new Member("홍길동", 20), new Member("이순신", 54),
		new Member("유관순", 19), new Member("왕건", 42)
		);
request.setAttribute("members", memberList);
%>

리스트객체: ${ lst = members.stream().map(m -> m.name).toList() } <br />
배열객체: ${ arr = members.stream().map(m -> m.name).toArray() } <br />
배열원소 arr[0]: ${ arr[0] } = ${ n = members.stream().map(m -> m.name).toArray()[0] } <br />

List 원소갯수: ${ members.stream().count() } <br />
배열 원소갯수: ${ arr.stream().count() } <br />

<hr />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="i" items="${arr}" varStatus="status">
	${i}: ${arr[status.index]} <br />
</c:forEach>