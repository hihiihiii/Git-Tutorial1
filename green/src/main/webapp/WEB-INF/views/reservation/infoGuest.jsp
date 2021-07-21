<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비회원 예약 조회</title>
</head>
<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header>
<br><br><br><br>
<div style="margin: 0 auto; text-align: center;">
<p style="text-align: center; font-size: xx-large;"><strong>비회원 예약 정보 조회</strong></p><br><br><br><br>
<p style="text-align: center; font-size: large;"><strong>예약시 발급 받은 번호를 입력해주세요.(발급번호는 이메일을 확인해주세요)</strong></p><br>
<form action="infoGuestChk">
<input type="number" name="number">
<input type="submit">
</form>
</div>
	<footer>
        <%@ include file="../footer/footer.jsp" %>
    </footer>
</body>
</html>