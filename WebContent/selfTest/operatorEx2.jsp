<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
${ 1+1 ; 10+10 } <br /> <%--10+10만 출력됨 --%>

${ var1=10 } <br /> <%--할당하면서 출력도 함--%>

${ hangul = ['가', '나', '다'] } <br /> <%--[가, 나, 다] 출력--%>
${ hangul = ['가', '나', '다'];'' } <br /> <%--빈 문자열 출력 --%>
${ hangul[0] } <%--가 출력--%>