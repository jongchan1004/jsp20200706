<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="selfTest.Member" %>
<%@ page import="java.util.*" %>
<%
Member m1 = new Member("범균","최", 23);
request.setAttribute("m", m1);
%>

<%--변수 값 설정: value 속성 사용 예 --%>
<c:set var="name1" value="최범균"/>
<c:set var="name2" value="<%= m1.getFirstName() %>" scope="request" /> <%--setattr안해도 됨 --%>
<c:set var="name3" value="${ m.lastName }${ m.firstName }" scope="request" /> <%--setattr해야 됨 --%>
${ name1 } <br />
${ name2 } <br />
${ name3 } <br />
<hr />
<%--변수 값 설정: 태그의 몸체를 값으로 사용 예 --%>
<c:set var="name4">최범균</c:set>
<c:set var="name5" scope="request"><%= m1.getLastName() %><%= m1.getFirstName() %></c:set>
<c:set var="name6" scope="request">${ m.lastName }${ m.firstName }</c:set> <%--setattr해야 됨 --%>
${ name4 } <br />
${ name5 } <br />
${ name6 } <br />

<%--property 값 설정 --%>
<%
Member m2 = new Member();
%>
<c:set target="<%= m2 %>" property="name" value="최범균1" />
<%= m2.getName() %> <br />

<c:set var="mm" value="<%= m2 %>" /> <%--${}에서 사용하기 위해서는 변수 설정 필요함 --%>
<c:set target="${ mm }" property="name" value="최범균2" />
${ mm.name } <br />

<%
Map<String, String> prop = new HashMap<String, String>();
//prop.put("host","localhost");
%>
<c:set target="<%= prop %>" property="host" value="localhost" />
<%= prop.get("host") %> <br />

<%--주의사항: target에 EL변수명만 지정하지 말 것. EL을 이용해 설정해야 함--%>
<c:set var="member" value="<%= m2 %>" />
<c:set target="${member}" property="name" value="최범균3" />
${ member.name }