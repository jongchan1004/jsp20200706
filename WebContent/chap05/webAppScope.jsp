<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

<ul>
<li>
page 영역 (pageContext): 하나의 jsp 페이지
</li>
<li>
request 영역 (request): 요청이 시작되고 끝날 때까지. 요청이 끝나지 않은 상태에서는 set, get가능함
</li>
<li>
session 영역 (session): 하나의 브라우저의 모든 요청들
</li>
<li>
application 영역 (application (ServletContext)): 웹앱 전체. 실행되고 있는 모든 servlet이 공통으로 가지고 있는 영역. 누군가 이 영역에 data(속성)를 set하면 다른 servlet이 get할 수 있음
</li>
</ul>

</body>
</html>