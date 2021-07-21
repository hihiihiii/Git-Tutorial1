<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header>
<p style="text-align: center; font-size: xx-large;"><strong> 장바구니 담기가 완료되었습니다.</strong></p><br><br><br>
<div style="text-align: center;">
<a href="<c:url value='/product/step1'></c:url>">[상품목록보기]</a>
	
</div>
	<c:forEach var="pro" items="${productList}" begin="1" end="1">
		<form:form commandName="cart" action="${pageContext.request.contextPath}/cart/cartList/${pro.product_number}/${authInfo.user_number}">
			<input type="submit" value="장바구니목록보기">
		</form:form>
	</c:forEach>
	
	<footer>
        <%@ include file="../footer/footer.jsp" %>
    </footer>
</body>
</html>