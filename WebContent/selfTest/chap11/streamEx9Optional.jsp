<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--값이 존재 안하면 ELException 발생 --%>
${ [1,2,3].stream().max().get() } <br />

<%--값이 존재 안하면 괄호안의 값 리턴 --%>
${ [].stream().min().orElse('없음') } <br />
${ [1,2,3].stream().min().orElse('없음') } <br />

<%--값이 존재 안하면 값을 생성하는 람다식 실행 --%>
${ [].stream().min().orElseGet(()->-1) } <br />

<%--존재할 경우만 람다식 실행 --%>
${ minValue = '-';'' }
${ [1,2,3].stream().min().ifPresent(x -> (minValue = x)) } <br />
최소값은 ${minValue}입니다.