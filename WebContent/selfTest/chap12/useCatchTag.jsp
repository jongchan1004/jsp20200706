<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:catch var="ex">
name 파라미터의 값 = <%= request.getParameter("name") %> <br />
<% if(request.getParameter("name").equals("test")) { %>
${param.name}은 test입니다.
<% } %>
</c:catch>

<p>
<c:if test="${ex != null}">
익셉션이 발생하였습니다: <br />
${ex}
</c:if>
</p>