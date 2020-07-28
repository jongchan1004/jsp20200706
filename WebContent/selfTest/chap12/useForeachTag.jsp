<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
HashMap<String, Object> mapData = new HashMap<>();
mapData.put("name","최범균");
mapData.put("today",new java.util.Date());
%>
<c:set var="intArray" value="<%= new int[]{1,3,5,7,9} %>" />
<c:set var="map" value="<%= mapData %>" />

<h4>1부터 100까지 홀수의 합</h4>
<c:set var="sum" value="0" />
<c:forEach var="i" begin="1" end="100" step="2" varStatus="status">
	<c:set var="sum" value="${sum + i}" />
	${i}   <%--${status.index} 와 같음 --%>
</c:forEach>
<br />
결과1 = ${sum}

<c:set var="sum" value="0" />
<c:forEach var="i" begin="1" end="100" step="2" varStatus="status">
	${sum = sum + i;''}
</c:forEach>
<br />
결과2 = ${sum}

<h4>구구단: 4단</h4>
<ul>
<c:forEach var="i" begin="1" end="9">
	<li>4 * ${i} = ${4*i}</li>
</c:forEach>
</ul>

<h4>int형 배열</h4>
<c:forEach var="i" items="${intArray}" begin="2" end="4" varStatus="status">
	${status.index+1}번째-${status.count}-[${i} = ${intArray[status.index]}] <br /> <%--i=intArray[status.index] --%>
</c:forEach>
1번째 값: ${intArray[0]}

<h4>Map</h4>
<c:forEach var="i" items="${map}">
	${i.key} = ${i.value} <br />
</c:forEach>