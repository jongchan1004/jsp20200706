<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ taglib prefix="myfunc" uri="/WEB-INF/tlds/my-function.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--1.스크립트릿 w/EL--%>
<%
List<Long> values1 = Arrays.asList(1L, 2L, 5L, 10L);
request.setAttribute("vals", values1);
%>
합계 ${myfunc:sum(vals)} <br />

<%--2.스크립트릿 w/ EL c:set태그 --%>
<%
List<Long> values2 = Arrays.asList(1L, 2L, 5L, 10L);
%>
<%-- EL변수 vals1에 values2 값을 할당 --%>
<c:set var="vals1" value="<%= values2 %>" />
<%--<c:set var="vals1" value="<% out.print(values2); %>" /> 에러--%>
myfunc:sum(vals1): ${myfunc:sum(vals1)} <br />

<%--참고 --%>
<%
int[] tInt={1,2,3};
String[] tStr={"A","B","C"};
List<Long> tList = Arrays.asList(1L, 2L, 5L, 10L);
%>
tInt:<%= tInt %>, tStr:<%= tStr %>, tList:<%= tList %>, tObject:<%= Array.get(tInt, 0) %> <br />

<%--3.EL List객체 사용 --%>
<c:set var="vals2" value="${ [1,2,5,10] }" /> <%--EL3.0부터  EL식에서 직접 List,Map,Set객체 생성가능 --%>
<%-- <c:set var="vals2" value="[1,2,5,10]" /> 에러--%>
<%-- <c:set var="vals2" value=[1,2,5,10] /> 에러--%>
[1,2,5,10]: ${ [1,2,5,10] } <br /> <%-- [1,2,5,10]이출력됨 --%>
myfunc:sum(vals2): ${myfunc:sum(vals2)} <br />

<%--4.EL List객체사용 --%>
myfunc:sum( [1,2,5,10] ): ${myfunc:sum( [1,2,5,10] )} <br /> <%-- EL내에서는 [1,2,5,10]이 List객체임?? --%>

<%--List객체 원소 접근--%>
List객체출력: ${vals2}
List객체원소접근: ${vals2[2]} <br />

<%--Map객체--%>
<c:set var="mem" value="${ {'name':'홍길동', 'age':20} }"/>
Map객체출력: ${mem }
Map객체원소접근: ${mem.name}, ${mem.age} <br />

<%--Set객체--%>
<c:set var="hangul" value="${ {'가','나','다'} }"/>
Set객체출력: ${hangul} <br />
<c:forEach var="i" items="${hangul}" begin="1" end="2" varStatus="status">
	${status.index} - ${status.count} -[${i}] <br /> <%--Set은 순서가 없어서 index가 적절치 않음 --%>
</c:forEach>

<%--Map, List 혼압 사용--%>
<c:set var="codes" value="${ [ {'code':'001', 'label':'1번'},{'code1':'002', 'label1':'2번'} ] }" />
${codes[0].code} / ${codes[0].label} <br />
${codes[1].code1} / ${codes[1].label1}