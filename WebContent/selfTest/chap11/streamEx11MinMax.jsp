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

<%--min(), max()는 Optional타입을 리턴 --%>
${ minAgeMemOpt = members.stream()
					.min((m1,m2)->m1.age.compareTo(m2.age));''}

${ minAgeMemOpt.get().name } (${ minAgeMemOpt.get().age }세) <br />

${ maxAgeMemOpt = members.stream()
					.max((m1,m2)->m1.age.compareTo(m2.age));''}

${ maxAgeMemOpt.get().name } (${ maxAgeMemOpt.get().age }세)