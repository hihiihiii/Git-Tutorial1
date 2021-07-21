<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 STEP 0 - 비회원 예약</title>
<style type="text/css">
html {
  scroll-behavior: smooth;
}
</style>
</head>
<body>
<header>
<%@include file="../header/header.jsp" %>
</header><br><br>
<div style="margin: 0 auto; text-align: center;">
<p style="text-align: center; font-size: xx-large;">STEP 0<br><strong>비회원 예약</strong></p><br>
<br><br><br><br>
	<p style="text-align: center; font-size: x-large;"><strong>이메일 주소 작성</strong></p><br><br><br>
	      <form action="step0" name="step0" me>
      	<p style="text-align: center; font-size:large;">예약 정보를 받으실 이메일 주소를 입력해주세요 (예약 조회시 이메일 주소로 보내드리는 접수 번호가 필요합니다.)</p><br>
      	<label>Email:
      	<input type="text" id="email" name="email">
      	</label>
      	<input type="button" value="전송" onclick="chkEmail()">
      </form>
      </div>
      <br><br><br>
	<br><br><br><br>   
<footer>
<%@include file="../footer/footer.jsp" %>
</footer>
<script type="text/javascript">
	function chkEmail() {
		var email = document.getElementById('email').value;
		if(!email){
			alert('이메일을 입력해주세요');
			document.getElementById('email').focus();
		}else{
			step0.submit();
		}
	}
	
	function search() {
		document.getElementById('email').focus();
		window.scrollTo(0,800);
	}
</script>
</body>
</html>