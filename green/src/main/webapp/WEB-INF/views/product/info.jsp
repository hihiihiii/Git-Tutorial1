<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 조회 및 취소</title>
</head>
<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header>
<br><br><br><br>
<div style="margin: 0 auto; text-align: center;">
<c:if test="${!empty eshop}">
<p style="text-align: center; font-size: xx-large;"><strong>상품 정보 조회</strong></p><br><br><br>
		<table style="font-size:large; margin: 0 auto; text-align: center; border: 1px solid black; width: 1300px; height: 100px;">
			<tr>
				<th>상품번호</th>
				<th>상품 가격</th>
				<th>상품 이름</th>
				<th>구매 수량</th>
				<th>구매하신분 아이디</th>
			</tr>
		<c:forEach var="e" items="${eshop}">
				<tr>
					<td>${e.eshop_number}</td>
					<td>${e.eshop_price}</td>
					<td>${e.eshop_name}</td>
					<td>${e.eshop_amount}</td>
					<td>${e.eshop_id}</td>
				</tr>
			</c:forEach>
			</table><br>
			<div>
			<a href="#">
			<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="showDelete()" style="margin:0 auto;">
			</a>
			</div><br><br>
			<form action="/product/deleteEshop">
			<div id="hideDeleteEshop" style="display:none;">
			<p style="text-align: center; font-size: large;"><strong>상품 번호를 입력해주세요.</strong></p><br>
			<input type="number" name="index" value="">
			<input type="submit">
			</div>
			</form>
			</c:if>
			</div>
			<c:if test="${empty eshop}">
				<p style="text-align: center; font-size: large;"><strong>상품 정보가 없습니다.</strong></p><br>
			</c:if>
				<footer>
        <%@ include file="../footer/footer.jsp" %>
    </footer>
    <script type="text/javascript">
    function showDelete() {
		document.getElementById('hideDeleteEshop').style.display = 'inline-block';
	}
   
    </script>
</body>
</html>