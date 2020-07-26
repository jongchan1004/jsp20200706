<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

${ [1,2,3,4,5].stream().sum() } <br /> <%--15 --%>

<%--average()는 OptionalDouble타입을 리턴 --%>
${ [1,2,3,4,5].stream().average().get() } <br /> <%--3.0 --%>
${ [1,2,3,4,5].stream().average().orElse(null) } <br /> <%--3.0 --%>
${ [].stream().average().orElse(0) } <br /> <%--0 --%>
${ [].stream().average().orElse(null) } <br />
<%--
${ [1].stream().average().ifPresent(x->someObject.add(x)) } <br />
 --%>