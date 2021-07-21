<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/cart.css'/>
</head>
<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header>
	<div style="margin: 0 auto; text-align: center;">
	<c:if test="${! empty authInfo}">
	${authInfo.user_id}
	<br>
	<br>
		<table class="bor" border="1" style="width: 650px; height: 50px;">
			<th style="width: 150px;">카트번호</th>
			<th style="width: 150px;">수량</th>
			<th style="width: 200px;">상품명</th>
			<th style="width: 150px;">가격</th>
		</table>
		
	
	<div class="cart">
		<div>
		<table class="bor"  style="width: 300px; height: 50px;">
			<c:forEach var='cart' items="${cartList}">
			<tr>
				<td style="width: 150px; height: 47px;">${cart.cart_number}</td>
				<td style="width: 150px; height: 47px;">${cart.cart_amount}</td>
			</tr>
			</c:forEach>
		</table>
		</div>
		<div>
			<c:forEach var='pro' items="${productList}">
			<table class="bor" style="width: 350px; height: 50px;">
			<tr>
				<td style="width: 200px;">${pro.product_name}</td>
				<td style="width: 150px;">${pro.product_price}</td>
			</tr>
			</table>
			</c:forEach>
		</div>
	</div>
	</c:if>	
	</div>	
	
		<a style="text-align: center;" href="<c:url value='/product/step1'></c:url>">[상품목록보기]</a>
	
	<footer>
        <%@ include file="../footer/footer.jsp" %>
    </footer>
</body>
</html>