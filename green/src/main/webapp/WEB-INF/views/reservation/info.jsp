<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 조회</title>
</head>
<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header>
<br><br><br><br>
<div style="margin: 0 auto; text-align: center;">
<p style="text-align: center; font-size: xx-large;"><strong>예약 정보 조회</strong></p><br><br><br>
<c:if test="${!empty reserv}">
		<table style="font-size:large; margin: 0 auto; text-align: center; border: 1px solid black; width: 1300px; height: 100px;">
			<tr>
				<th>예약번호</th>
				<th>아이디</th>
				<th>이메일</th>
				<th>객실 종류</th>
				<th>가격</th>
				<th>인원</th>
				<th>객실 크기</th>
				<th>침대 종류</th>
				<th>옵션</th>
				<th>예약 날짜</th>
				<th>퇴실 날짜</th>
			</tr>
		<c:forEach var="r" items="${reserv}">
				<tr>
					<td>${r.reserv_index}</td>
					<td>${r.reserv_id}</td>
					<td>${r.reserv_email}</td>
					<td>${r.reserv_type}</td>
					<td>${r.reserv_price}</td>
					<td>${r.reserv_person}</td>
					<td>${r.reserv_size}</td>
					<td>${r.reserv_bed}</td>
					<td>${r.reserv_option}</td>
					<td>${r.reserv_from}</td>
					<td>${r.reserv_to}</td>
				</tr>
			</c:forEach>
			</table><br>
			<div>
			<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="showDelete()" style="margin:0 auto;">
			</div><br><br>
			<form action="delete">
			<div id="hideDelete" style="display:none;">
			<p style="text-align: center; font-size: large;"><strong>예약 번호를 입력해주세요.</strong></p><br>
			<input type="number" name="index" value="">
			<input type="submit">
			</div>
			</form>
			</c:if>
			</div>
			<c:if test="${empty reserv}">
				<p style="text-align: center; font-size: large;"><strong>예약 정보가 없습니다.</strong></p><br>
			</c:if>
			<br><br><br><br>
			

	<footer>
        <%@ include file="../footer/footer.jsp" %>
    </footer>
    <script type="text/javascript">
    function showDelete() {
		document.getElementById('hideDelete').style.display = 'inline-block';
	}
   
    </script>
</body>
</html>