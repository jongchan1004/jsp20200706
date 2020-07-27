<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--방법 1 --%>
${ greaterThan = (a,b) -> a>b ? true: false; '' }
${ greaterThan(10,5) } <br />
${ greaterThan(1,3) } <br />

<%--방법 2 --%>
${ ((a,b) -> a>b ? true: false)(1,3) } <br />

<%--재귀호출 --%>
${ factorial = n -> n==1 ? 1: n*factorial(n-1); ''}
${ factorial(5) }