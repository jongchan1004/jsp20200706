<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

${ lst = [1,2,3,4,5]; ''}

<%--5보다 큰 원소가 존재하는지 확인--%>
${ matchOpt = lst.stream().anyMatch( v -> v>5 ); ''}
${ matchOpt.get() } <br /> <%--false출력 --%>


${ mactchOpt = [].stream().anyMatch( v -> v>4 ); ''}
${ matchOpt.orElse(false) } <br /> <%--원소가 없으면 false리턴--%>

<%--모든 원소가 매치되면 true 리턴 --%>
${ lst = [1,2,3,4,5]; lst.stream().allMatch( x -> x>4 ).get() } <br />

<%--모든 원소가 매치되지 않으면 true 리턴 --%>
${ lst = [1,2,3,4,5]; lst.stream().noneMatch( x -> x>4 ).get() }
