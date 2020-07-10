<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="codes" value="${[{'code':'001', 'label':'1번'},{'code':'002', 'label':'2번'}]}" />
${codes[1].code} / ${codes[1].label}
<br />

<c:set var="vals" value="${[1,2,5,10]}" />
${vals[2]}
