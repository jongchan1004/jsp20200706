<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/self" %>

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

<title>select 태그 사용</title>
</head>
<body>

<tf:select name="code" rgb="RGB 모드" wb="흑백 모드" />

<tf:select name="genre" rock="락" ballad="발라드" metal="메탈" />

</body>
</html>