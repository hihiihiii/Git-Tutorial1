<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 삭제</title>
</head>
<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header>
<p style="text-align: center; font-size: xx-large;"><strong> 상품 삭제가 완료되었습니다.</strong></p><br><br><br>
<div style="text-align: center;">
<a href="<c:url value='/product/step1'></c:url>">[상품목록보기]</a>
<a href="<c:url value='/main'/>" style="text-align: center;">
			[메인으로 이동]
		</a>
		</div>
				<footer>
        <%@ include file="../footer/footer.jsp" %>
    </footer>
</body>
</html>