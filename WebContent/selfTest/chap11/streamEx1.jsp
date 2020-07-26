<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--이전 방법 --%>
<c:set var="lst1" value="<%= java.util.Arrays.asList(1,2,3,4,5) %>" />
<c:forEach var="val" items="${lst1}">
	<c:set var="sum1" value="${sum1+val}" />
</c:forEach>
${ sum1 } <br />

<%--EL3.0 stream API 방법1--%>
<%-- <c:set var="lst2" value="<%= java.util.Arrays.asList(1,2,3,4,5) %>" /> --%>
<c:set var="lst2" value="${ [1,2,3,4,5] }" />
<c:set var="sum2" value="${ lst2.stream().sum() }"/>
${ sum2 } <br />

<%--EL3.0 stream API 방법2--%>
${ lst3 = [1,2,3,4,5]; sum3 = lst3.stream().sum() }