<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 삭제</title>
</head>
<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header>
<br><br><br><br>
<p style="text-align: center; font-size: xx-large;"><strong>삭제가 완료되었습니다.</strong></p><br><br><br>
<a href="<c:url value='/main'/>"><p style="text-align: center;">[메인으로 이동하시겠습니까 ?]</p></a>
	<footer>
        <%@ include file="../footer/footer.jsp" %>
    </footer>
</body>
</html>