<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Shop</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/hotel1.js"></script>
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/eshop1.css'/>
</head>
<body>
<header>
<%@ include file="../header/header.jsp" %>
</header>
<div class="main">
        <div class="top">
            <h1 class="title">e-shop</h1>
            <hr class="line">
            <p class="content">
                그린호텔에서 프리미엄 온라인 숍을 선보입니다. <br>
                그린호텔에서 경험하신 <br> 
                다양한 프리미엄 상품을 e-SHOP 으로 만나보세요. <br> 
                그린호텔만의 품격있는 상품들이 여러분의 일상에 가치를 더해드립니다. <br> 
            </p>
           
            <form:form commandName="productForm" action="step2">
            <c:if test="${!empty authInfo && !empty authInfo.admin_code}">
            	<input type="submit" value="상품등록">
            	 </c:if>
            </form:form>
            <hr class="line">
        </div>
		<c:if test="${!empty productList}">
			<div class="middle">
				<h1 class="title topbom">상품목록</h1>
					<div class="imgcon">
				<c:forEach var="pro" items="${productList}">
						<div class="pad">
							<a href='<c:url value='/product/detail/${pro.product_number}'></c:url>'>
							<img class="pic"
								src="${pageContext.request.contextPath}/resources/images/${pro.product_url}.jpg"
								alt="">
							</a>
							<h2 class="topbom">${pro.product_name}</h2>
							<hr>
				
							<p id="detail1" style="font-size: 20px; margin-top: 2%;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${pro.product_price}" /></p>
						  	<c:if test="${!empty authInfo && !empty authInfo.admin_code}">
							<a href='<c:url value='/product/deleted/${pro.product_number}'></c:url>'>
							<input type="submit" value="삭제">
							</a>
							</c:if>
						</div>
				</c:forEach>
					</div>
			</div>
		</c:if>
	</div>
		
    
    <script>
          $(document).ready(function () {
			$(".pad").hover(function() {
					$(this).addClass("sha", 10);
				}, function() {
					$(this).removeClass("sha", 100);
				});
			});
	</script>

<footer>
<%@ include file="../footer/footer.jsp" %>
</footer>
</body>
</html>