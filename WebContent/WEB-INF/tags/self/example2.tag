<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ variable name-given="x" scope="NESTED" %>

(tag)초기x: ${x} <br />
<c:set var="x" value="2" />
<jsp:doBody />
(tag)x=2, doBody수행 후 x: ${x} <br />
<c:set var="x" value="4" />