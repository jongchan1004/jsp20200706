<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

콤마와 점을 구분자로 사용: <br />
<c:forTokens var="token"
		items="빨강색,주황색.노란색.초록색,파랑색,남색.보라색"
		delims=",.">
${token} <br />
</c:forTokens>
<br />

<c:forTokens var="color" items="red,green,blue" delims="," begin="1" end="2" varStatus="status">
	${status.index}-${status.count}-[${color}] <br />
</c:forTokens>