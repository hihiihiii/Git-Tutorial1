<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<%@ include file="../header/header.jsp" %>
	</header><br><br><br>
	<div style="text-align: center;">
	<p style="font-size: xx-large;"><strong>
		로그인성공!</strong>
	</p><br>
	<p>
		<a href="<c:url value='/main'/>">
			[메인으로 이동하시겠습니까 ?]
		</a>
	</p>
	</div><br><br><br><br><br><br>
	<footer>
		<%@ include file="../footer/footer.jsp" %>
	</footer>
</body>
</html>