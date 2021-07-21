<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.Date" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 STEP 2 - 객실 선택</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/jquery-ui-1.12.1/datepicker-ko.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
	  <script type="text/javascript" src="${pageContext.request.contextPath}"></script>
<link href="${pageContext.request.contextPath}/resources/css/info1.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ksks.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/hotel1.js"></script>
		   <script>
        $(document).ready(function () { $("#datepicker").datepicker(); }); 
    </script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
.hideMenu{
text-align: center;
background-color: rgb(245,245,245);
width: 1300px;
height: 420px;
left: 310px;
position: relative;
display: none;

}
.hideMenu > p{
	font-size: 15px;
}
.hidePayment{
display:none;
width: 1300px;
height: 200px;
margin: 0 auto;
}
html {
  scroll-behavior: smooth;
}
.showBtn{
margin: 0px;
position: relative;
right: 250px;
}
</style>
</head>
<body id="element">

<%@ include file="../header/header.jsp" %>

   	<form:form action="step3" commandName="reservForm" name="reservForm" onSubmit="paymentTest();return false">
   	<br><br><br>
   		<div class="section reservation">
   		<p style="text-align: center; font-size: xx-large;">STEP 1<br><strong>날짜,인원 선택</strong></p><br>
   			<div>
            	<p style="font-size:large; text-align: center;"><strong>원하시는 날짜와 인원을 선택해주세요</strong></p><br>
            </div>
        <table class="reserv" style="font-size:large; margin: 0 auto; text-align: center; border: 1px solid black; width: 800px; height: 100px;">
            <tr>
                <td><strong>체크인</strong></td>
                <td><img alt="달" src="${pageContext.request.contextPath}/resources/images/half-moon.png"></td>
                <td><strong>체크아웃</strong></td>
                <td colspan="2"><strong>객실</strong></td>
                <td colspan="2"><strong>성인</strong></td>
                <td colspan="2"><strong>어린이</strong></td>
                <td rowspan="2">
                </td>
            </tr>
            <tr>
                <td><input type="text" readonly="readonly" name="reserv_from" id="datepicker1" value="<%= sf.format(nowTime) %>"
                style="border:none; text-align: center; font-size:large;">
                </td>
                <td></td>
                <td><input type="text" readonly="readonly" value="" name="reserv_to" id="datepicker2" style="border:none; text-align: center; font-size:large;" >
                </td>
                <td colspan="2" style="padding-left: 10px; padding-right: 10px;">
                <input type="number" name="reserv_room" style="border:none; font-size:large; width: 30px;" readonly="readonly" value="1">개
                </td>
                <td colspan="2" style="padding-left: 10px; padding-right: 10px;">
                <input type="number" name="reserv_person" id="reserv_person" style="border:none; font-size:large; width: 35px;" value="1">명
                </td>
                <td colspan="2" style="padding-left: 10px; padding-right: 10px;">
                <input type="number" name="reserv_child" style="border:none; font-size:large; width: 30px;" value="0">명</td>
            </tr>
            </table><br>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   		<p style="text-align: center; font-size: 17px;"><a id="next" href="#STEP 2" style="text-decoration: none; "><strong>> NEXT</strong></a></p><br>
	<br><br><br>
	<hr class="devide">
	<p id="STEP 2"style="text-align: center; font-size: xx-large;">STEP 2</p><br>
	<p style="text-align: center; font-size: xx-large;"><strong>객실 선택</strong></p><br>
	<p style="font-size:large; text-align: center;"><strong>원하시는 객실을 선택해주세요</strong></p><br><br>
     <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/standard1.jpg" onclick="Standard()">
        </div>
        <div class="content">
            <h2>Standard Room</h2>
            <P>스탠다드</P>
             
        </div>
        <div class="content">
            <h2>KRW <!-- ${price} --></h2>
            <P>평균가 1박<br>(세금,봉사료 별도)</P>
        </div>
        <div class="btnsize">
             <input type="button" value="예약하기" onclick="showMenuStandard()">
        </div>
    </div>
       <hr class="devide">
      <div class="hideMenu" id="hideMenuStandard"><br>
      <div style="display:inline-block;">
    	<p><strong>침대 선택</strong></p>
    	<input type="radio" id="standardBed1" name="reserv_bed" value="double">더블
    	<input type="radio" id="standardBed2" name="reserv_bed" value="twin">트윈<br><br>
    	<p><strong>객실 크기 선택</strong></p>
    	<input type="radio" id="standardSize1" name="reserv_size" value="40">40m²
    	<input type="radio" id="standardSize2" name="reserv_size" value="45">45m²<br><br>
    	<p><strong>옵션 선택</strong></p>
    	<input type="radio"  name="reserv_option" value="">없음
    	<input type="radio"  name="reserv_option" value="조식">조식
    	</div><br><br><br>
    	<div id="reserv_kindForm">
       	<div style="float: left;">
       	<label>예약 서비스 약관<br>
       	<textarea rows="3" cols="50" readonly="readonly" style="text-align: left;">
       	제1조(목적)
본 약관은 그린 호텔(이하 ‘그린’이라 한다)의 그린 호텔 예약 시스템(이하 ‘예약’이라 한다)을 이용하여 숙박을 예약하는 고객에게 필요한 제반 사항들을 규정함으로써 시스템 운영 및 관리의 효율성을 제고하고, 고객 편의를 증대하는 것을 목적으로 합니다.

제2조(약관의 효력)
① 그린은 관계 법령의 범위에서 본 약관을 개정할 수 있으며, 개정사유와 적용일자를 명시하여 현행 약관과 함께 그린의 홈페이지 초기화면이나 팝업화면에 그 적용일자 15일 전부터 적용일자 전일까지 공지합니다.
② 그린이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후(적용일 포함)에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전 약관조항이 적용됩니다. 다만, 이미 계약을 체결한 고객이 개정약관 조항의 적용을 받기를 원하는 뜻을 제1항의 개정약관 공지기간 내에 세종에 발송하여 세종의 동의를 받는 경우에는 개정약관 조항이 적용됩니다.
③ 회원은 변경된 약관에 동의하지 않을 경우 회원탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후 해지 요청을 하지 않을 경우 약관의 변경사항에 동의한 것으로 간주됩니다.

       	</textarea><br>
       	&nbsp;&nbsp;<form:checkbox path="reserv_type" id="kindStandard" value="Standard" />예약 서비스 이용약관에 동의합니다.(동의하지 않을경우 예약이 불가능합니다.)
       	</label>
       	</div>
       	<div style="position: relative; left: 150px;">
       	<label>요구  사항<br>
       	<textarea rows="3" cols="50" placeholder="예시)추가 배드를 요청합니다" style="text-align: left;"></textarea></label><br>
       	</div>
       	</div><br>
    	<div class="showBtn">
    	<input type="button" onclick="showPaymentStandard()" value="확인"><br>
		</div>
       	<div id="paymentStandard" class="hidePayment" style="margin-top:20px;"><br>
    	<h3>객실 요금</h3>
    	<p>세금 및 봉사료</p>
    	<h3>총 결제금액</h3>
    			<input type="number" name="reserv_price" readonly="readonly" value="100" style="border:none; font-size:large; text-align: right;"><strong>원</strong><br><br>
    	    	<input type="submit"
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/reserved.png'); 
                width: 128px; height: 49px; background-color: white; color:transparent;">
    	<a href="#">
    	<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="hideMenuStandard()">
    	</a>
    	</div>
    	</div>
    <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/deluxe.jpg" onclick="Deluxe()">
        </div>
        <div class="content">
            <h2>DeLuxe Room</h2>
            <P>디럭스룸</P>
        </div>
        <div class="content">
            <h2>KRW 123,123~</h2>
            <P>평균가 1박<br>(세금,봉사료 별도)</P>
        </div>
        <div class="btnsize">
             <input type="button" value="예약하기" onclick="showMenuDeluxe()">
        </div>
    </div>
       <hr class="devide">
      <div class="hideMenu" id="hideMenuDeluxe"><br>
    	<p><strong>침대 선택</strong></p>
    	<input type="radio" id="deluxeBed1" name="reserv_bed" value="double">더블
    	<input type="radio" id="deluxeBed2" name="reserv_bed" value="twin">트윈<br><br>
    	<p><strong>객실 크기 선택</strong></p>
    	<input type="radio" id="deluxeSize1" name="reserv_size" value="50">50m²
    	<input type="radio" id="deluxeSize2" name="reserv_size" value="55">55m²<br><br>
    	<p><strong>옵션 선택</strong></p>
    	<input type="radio"  name="reserv_option" value="">없음
    	<input type="radio"  name="reserv_option" value="조식">조식<br><br><br>
    	
    	<div id="reserv_kindForm">
       	<div style="float: left;">
       	<label>예약 서비스 약관<br>
       	<textarea rows="3" cols="50" readonly="readonly" style="text-align: left;">
       	제1조(목적)
본 약관은 그린 호텔(이하 ‘그린’이라 한다)의 그린 호텔 예약 시스템(이하 ‘예약’이라 한다)을 이용하여 숙박을 예약하는 고객에게 필요한 제반 사항들을 규정함으로써 시스템 운영 및 관리의 효율성을 제고하고, 고객 편의를 증대하는 것을 목적으로 합니다.

제2조(약관의 효력)
① 그린은 관계 법령의 범위에서 본 약관을 개정할 수 있으며, 개정사유와 적용일자를 명시하여 현행 약관과 함께 그린의 홈페이지 초기화면이나 팝업화면에 그 적용일자 15일 전부터 적용일자 전일까지 공지합니다.
② 그린이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후(적용일 포함)에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전 약관조항이 적용됩니다. 다만, 이미 계약을 체결한 고객이 개정약관 조항의 적용을 받기를 원하는 뜻을 제1항의 개정약관 공지기간 내에 세종에 발송하여 세종의 동의를 받는 경우에는 개정약관 조항이 적용됩니다.
③ 회원은 변경된 약관에 동의하지 않을 경우 회원탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후 해지 요청을 하지 않을 경우 약관의 변경사항에 동의한 것으로 간주됩니다.

       	</textarea><br>
       	&nbsp;&nbsp;<form:checkbox path="reserv_type" id="kindD" value="Deluxe" />예약 서비스 이용약관에 동의합니다.(동의하지 않을경우 예약이 불가능합니다.)
       	</label>
       	</div>
       	<div style="position: relative; left: 150px;">
       	<label>요구  사항<br>
       	<textarea rows="3" cols="50" placeholder="예시)추가 배드를 요청합니다" style="text-align: left;"></textarea></label><br>
       	</div>
       	</div><br>
    	<div class="showBtn">
    	<input type="button" onclick="showPaymentDeluxe()" value="확인"><br>
		</div>
       	<div id="paymentDeluxe" class="hidePayment" style="margin-top:20px;"><br>
    	<h3>객실 요금</h3>
    	<p>세금 및 봉사료</p>
    	<h3>총 결제금액</h3>
    	<input type="number" name="reserv_price" readonly="readonly" value="100" style="border:none; font-size:large; text-align: right;"><strong>원</strong><br><br>
    	    	<input type="submit"
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/reserved.png'); 
                width: 128px; height: 49px; background-color: white; color:transparent;">
    	<a href="#">
    	<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="hideMenuDeluxe()">
    	</a>
    	</div>
    	</div>
    <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/premium.jpg" onclick="Premium()">
        </div>
        <div class="content">
            <h2>premium Room</h2>
            <P>프리미엄룸</P>
        </div>
        <div class="content">
            <h2>KRW 123,123~</h2>
            <P>평균가 1박<br>(세금,봉사료 별도)</P>
        </div>
        <div class="btnsize">
             <input type="button" value="예약하기" onclick="showMenuPremium()">
        </div>
    </div>
       <hr class="devide">
      <div class="hideMenu" id="hideMenuPremium"><br>
    	<p><strong>침대 선택</strong></p>
    	<input type="radio" id="premiumBed1" name="reserv_bed" value="double">더블
    	<input type="radio" id="premiumBed2" name="reserv_bed" value="twin">트윈<br><br>
    	<p><strong>객실 크기 선택</strong></p>
    	<input type="radio" id="premiumSize1" name="reserv_size" value="55">55m²
    	<input type="radio" id="premiumSize2" name="reserv_size" value="60">60m²<br><br>
    	<p><strong>옵션 선택</strong></p>
    	<input type="radio"  name="reserv_option" value="">없음
    	<input type="radio"  name="reserv_option" value="조식">조식<br><br><br>
    	
    	  <div id="reserv_kindForm">
       	<div style="float: left;">
       	<label>예약 서비스 약관<br>
       	<textarea rows="3" cols="50" readonly="readonly" style="text-align: left;">
       	제1조(목적)
본 약관은 그린 호텔(이하 ‘그린’이라 한다)의 그린 호텔 예약 시스템(이하 ‘예약’이라 한다)을 이용하여 숙박을 예약하는 고객에게 필요한 제반 사항들을 규정함으로써 시스템 운영 및 관리의 효율성을 제고하고, 고객 편의를 증대하는 것을 목적으로 합니다.

제2조(약관의 효력)
① 그린은 관계 법령의 범위에서 본 약관을 개정할 수 있으며, 개정사유와 적용일자를 명시하여 현행 약관과 함께 그린의 홈페이지 초기화면이나 팝업화면에 그 적용일자 15일 전부터 적용일자 전일까지 공지합니다.
② 그린이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후(적용일 포함)에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전 약관조항이 적용됩니다. 다만, 이미 계약을 체결한 고객이 개정약관 조항의 적용을 받기를 원하는 뜻을 제1항의 개정약관 공지기간 내에 세종에 발송하여 세종의 동의를 받는 경우에는 개정약관 조항이 적용됩니다.
③ 회원은 변경된 약관에 동의하지 않을 경우 회원탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후 해지 요청을 하지 않을 경우 약관의 변경사항에 동의한 것으로 간주됩니다.

       	</textarea><br>
       	&nbsp;&nbsp;<form:checkbox path="reserv_type" id="kindP" value="Premium" />예약 서비스 이용약관에 동의합니다.(동의하지 않을경우 예약이 불가능합니다.)
       	</label>
       	</div>
       	<div style="position: relative; left: 150px;">
       	<label>요구  사항<br>
       	<textarea rows="3" cols="50" placeholder="예시)추가 배드를 요청합니다" style="text-align: left;"></textarea></label><br>
       	</div>
       	</div><br>
    	<div class="showBtn">
    	<input type="button" onclick="showPaymentPremium()" value="확인"><br>
		</div>
       	<div id="paymentPremium" class="hidePayment" style="margin-top:20px;"><br>
    	<h3>객실 요금</h3>
    	<p>세금 및 봉사료</p>
    	<h3>총 결제금액</h3>
    	<input type="number" name="reserv_price" readonly="readonly" value="100" style="border:none; font-size:large;text-align: right;"><strong>원</strong><br><br>
    	<input type="submit"
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/reserved.png'); 
                width: 128px; height: 49px; background-color: white; color:transparent;">
    	<a href="#">
    	<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="hideMenuPremium()">
    	</a>
    	</div>
    	</div>
    <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/suite.jpg" onclick="Suite()">
        </div>
        <div class="content">
            <h2>Suite Room</h2>
            <P>스위트룸</P>
        </div>
        <div class="content">
            <h2>KRW 123,123~</h2>
            <P>평균가 1박<br>(세금,봉사료 별도)</P>
        </div>
        <div class="btnsize">
            <input type="button" value="예약하기" onclick="showMenuSuite()">
        </div>
    </div>
       <hr class="devide">
      <div class="hideMenu" id="hideMenuSuite"><br>
    	<p><strong>침대 선택</strong></p>
    	<input type="radio" id="suiteBed1" name="reserv_bed" value="double">더블
    	<input type="radio" id="suiteBed2" name="reserv_bed" value="twin">트윈<br><br>
    	<p><strong>객실 크기 선택</strong></p>
    	<input type="radio" id="suiteSize1" name="reserv_size" value="60">60m²
    	<input type="radio" id="suiteSize2" name="reserv_size" value="70">70m²<br><br>
    	<p><strong>옵션 선택</strong></p>
    	<input type="radio"  name="reserv_option" value="">없음
    	<input type="radio"  name="reserv_option" value="조식">조식(기본제공)<br><br><br>
    	
    	<div id="reserv_kindForm">
       	<div style="float: left;">
       	<label>예약 서비스 약관<br>
       	<textarea rows="3" cols="50" readonly="readonly" style="text-align: left;">
       	제1조(목적)
본 약관은 그린 호텔(이하 ‘그린’이라 한다)의 그린 호텔 예약 시스템(이하 ‘예약’이라 한다)을 이용하여 숙박을 예약하는 고객에게 필요한 제반 사항들을 규정함으로써 시스템 운영 및 관리의 효율성을 제고하고, 고객 편의를 증대하는 것을 목적으로 합니다.

제2조(약관의 효력)
① 그린은 관계 법령의 범위에서 본 약관을 개정할 수 있으며, 개정사유와 적용일자를 명시하여 현행 약관과 함께 그린의 홈페이지 초기화면이나 팝업화면에 그 적용일자 15일 전부터 적용일자 전일까지 공지합니다.
② 그린이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후(적용일 포함)에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전 약관조항이 적용됩니다. 다만, 이미 계약을 체결한 고객이 개정약관 조항의 적용을 받기를 원하는 뜻을 제1항의 개정약관 공지기간 내에 세종에 발송하여 세종의 동의를 받는 경우에는 개정약관 조항이 적용됩니다.
③ 회원은 변경된 약관에 동의하지 않을 경우 회원탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후 해지 요청을 하지 않을 경우 약관의 변경사항에 동의한 것으로 간주됩니다.

       	</textarea><br>
       	&nbsp;&nbsp;<form:checkbox path="reserv_type" id="kindS" value="Suite" />예약 서비스 이용약관에 동의합니다.(동의하지 않을경우 예약이 불가능합니다.)
       	</label>
       	</div>
       	<div style="position: relative; left: 150px;">
       	<label>요구  사항<br>
       	<textarea rows="3" cols="50" placeholder="예시)추가 배드를 요청합니다" style="text-align: left;"></textarea></label><br>
       	</div>
       	</div><br>
    	<div class="showBtn">
    	<input type="button" onclick="showPaymentSuite()" value="확인"><br>
		</div>
       	<div id="paymentSuite" class="hidePayment" style="margin-top:20px;">
		<br>

    	<h3>객실 요금</h3>
    	<p>세금 및 봉사료</p>
    	<h3>총 결제금액</h3>
		<input type="number" name="reserv_price" readonly="readonly" value="100" style="border:none; font-size:large; text-align: right;"><strong>원</strong><br><br>
    	<input type="submit" 
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/reserved.png'); 
                width: 128px; height: 49px; background-color: white; color:transparent;">
    	<a href="#">
    	<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="hideMenuSuite()">
    	</a>
    	</div>
    	</div>
    <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/premium_suite.jpg" onclick="Premium_Suite()">
        </div>
        <div class="content">
            <h2>Premium Suite Room</h2>
            <P>프리미엄스위트룸</P>
        </div>
        <div class="content">
            <h2>KRW 123,123~</h2>
            <P>평균가 1박<br>(세금,봉사료 별도)</P>
        </div>
        <div class="btnsize">
       <input type="button" value="예약하기" onclick="showMenuPremiumSuite()">
        </div>
    </div>
    <hr class="devide">
      <div class="hideMenu" id="hideMenuPremiumSuite"><br>
    	<p><strong>침대 선택</strong></p>
    	<input type="radio" id="premiumSuiteBed1" name="reserv_bed" value="double">더블
    	<input type="radio" id="premiumSuiteBed2" name="reserv_bed" value="twin">트윈<br><br>
    	<p><strong>객실 크기 선택</strong></p>
    	<input type="radio" id="premiumSuiteSize1" name="reserv_size" value="70">70m²
    	<input type="radio" id="premiumSuiteSize2" name="reserv_size" value="80">80m²<br><br>
    	<p><strong>옵션 선택</strong></p>
    	<input type="radio" name="reserv_option" value="">없음
    	<input type="radio"  name="reserv_option" value="조식">조식(기본제공)<br><br><br>
    	
    	<div id="reserv_kindForm">
       	<div style="float: left;">
       	<label>예약 서비스 약관<br>
       	<textarea rows="3" cols="50" readonly="readonly" style="text-align: left;">
       	제1조(목적)
본 약관은 그린 호텔(이하 ‘그린’이라 한다)의 그린 호텔 예약 시스템(이하 ‘예약’이라 한다)을 이용하여 숙박을 예약하는 고객에게 필요한 제반 사항들을 규정함으로써 시스템 운영 및 관리의 효율성을 제고하고, 고객 편의를 증대하는 것을 목적으로 합니다.

제2조(약관의 효력)
① 그린은 관계 법령의 범위에서 본 약관을 개정할 수 있으며, 개정사유와 적용일자를 명시하여 현행 약관과 함께 그린의 홈페이지 초기화면이나 팝업화면에 그 적용일자 15일 전부터 적용일자 전일까지 공지합니다.
② 그린이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후(적용일 포함)에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전 약관조항이 적용됩니다. 다만, 이미 계약을 체결한 고객이 개정약관 조항의 적용을 받기를 원하는 뜻을 제1항의 개정약관 공지기간 내에 세종에 발송하여 세종의 동의를 받는 경우에는 개정약관 조항이 적용됩니다.
③ 회원은 변경된 약관에 동의하지 않을 경우 회원탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후 해지 요청을 하지 않을 경우 약관의 변경사항에 동의한 것으로 간주됩니다.

       	</textarea><br>
       	&nbsp;&nbsp;<form:checkbox path="reserv_type" id="kindPS" value="PremiumSuite" />예약 서비스 이용약관에 동의합니다.(동의하지 않을경우 예약이 불가능합니다.)
       	</label>
       	</div>
       	<div style="position: relative; left: 150px;">
       	<label>요구  사항<br>
       	<textarea rows="3" cols="50" placeholder="예시)추가 배드를 요청합니다" style="text-align: left;"></textarea></label><br>
       	</div>
       	</div><br>
       	<div class="showBtn">
    	<input type="button" onclick="showPaymentPremiumSuite()" value="확인"><br>
		</div>
       	<div id="paymentPremiumSuite" class="hidePayment" style="position:relative; left 10px;"><br><br>
<br>

    	<h3>객실 요금</h3>
    	<p>세금 및 봉사료</p>
    	<h3>총 결제금액</h3>
		<input type="number" name="reserv_price" readonly="readonly" value="100" style="border:none; font-size:	large; text-align: right;"><strong>원</strong><br><br>
    	<input type="submit" 
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/reserved.png'); 
                width: 128px; height: 49px; background-color: white; color:transparent;">

    	
    	<a href="#">
    	<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="hideMenuPremiumSuite()">
    	</a>
    	</div>
    	</div>
       <hr class="devide"> 
        <c:if test="${!empty authInfo}"> <!-- authInfo안에 데이터가 있다면 (로그인상태)  -->
        	<input type="hidden" name="reserv_id" value="${authInfo.user_id}">
        	<input type="hidden" name="reserv_email" value="${authInfo.user_email}">
        </c:if>
        <c:if test="${empty authInfo}"> <!-- authInfo안에 데이터가 없다면 (로그아웃 상태)  -->
        	<input type="hidden" name="reserv_id" value="">
        	<input type="hidden" name="reserv_email" value="${email}">
        </c:if>
          	</form:form>
   	<br>
       	<%@ include file='../footer/footer.jsp'%>
       	
       <script type="text/javascript">
       $(document).ready(function(){
    	    $("#datepicker1").datepicker({
    	    changeMonth:true
    	    ,changeYear:true
    	    ,dateFormat:"yy년 mm월 dd일"
    	   	,dayNames : ['월요일','화요일','수요일','목요일','금요일','토요일','일요일']
    	    ,dayNamesMin : ['월','화','수','목','금','토','일']
    	    ,monthNamesShort:  [ "1월", "2월", "3월", "4월", "5월", "6월","7월", "8월", "9월", "10월", "11월", "12월" ]
    	    ,showOtherMonths:true
    	    });
    	    $("#datepicker2").datepicker({
    	        changeMonth:true
    	        ,changeYear:true
    	        ,dateFormat:"yy년 mm월 dd일"
    	       	,dayNames : ['월요일','화요일','수요일','목요일','금요일','토요일','일요일']
    	        ,dayNamesMin : ['월','화','수','목','금','토','일']
    	        ,monthNamesShort:  [ "1월", "2월", "3월", "4월", "5월", "6월","7월", "8월", "9월", "10월", "11월", "12월" ]
    	        ,showOtherMonths:true
    	        });
    	    

    	   		$('#datepicker1').datepicker("option", "minDate", 0);
    	        $('#datepicker1').datepicker("option", "maxDate", $("#datepicker2").val());
    	        $('#datepicker1').datepicker("option", "onClose", function (selectedDate){
    	            $("#datepicker2").datepicker( "option", "minDate", selectedDate );
    	            });
    	        
    	        $('#datepicker2').datepicker();
    	        $('#datepicker2').datepicker("option", "minDate", $("#datepicker1").val());
    	        $('#datepicker2').datepicker("option", "onClose", function (selectedDate){
    	            $("#datepicker1").datepicker( "option", "maxDate", selectedDate );
    	           });
    	        
    	    	});
       
       function paymentTest() {
    	   var IMP = window.IMP; // 생략가능
    	   IMP.init('imp33839367');  // 가맹점 식별 코드
    	   
    	   IMP.request_pay({
    		    pg : 'inicis', // version 1.1.0부터 지원.
    		    pay_method : 'card',
    		    merchant_uid : 'merchant_' + new Date().getTime(),
    		    name : '주문명:결제테스트',
    		    amount : 100,
    		    buyer_email : 'iamport@siot.do',
    		    buyer_name : '구매자이름',
    		    buyer_tel : '010-1234-5678',
    		    buyer_addr : '서울특별시 강남구 삼성동',
    		    buyer_postcode : '123-456',
    		    m_redirect_url : '/reservation/step4'
    		}, function(rsp) {
    		    if ( rsp.success ) {
    		        var msg = '결제가 완료되었습니다.';
    		        msg += '고유ID : ' + rsp.imp_uid;
    		        msg += '상점 거래ID : ' + rsp.merchant_uid;
    		        msg += '결제 금액 : ' + rsp.paid_amount;
    		        msg += '카드 승인번호 : ' + rsp.apply_num;
    		        document.reservForm.submit();
    		        
    		        return true;
    		    } else {
    		        var msg = '결제에 실패하였습니다.';
    		        msg += '에러내용 : ' + rsp.error_msg;
    		    }
    		    alert(msg);
    		});
	}
       
   		function showPaymentStandard() {
   			var standardSize1 = document.getElementById('standardSize1').checked;
   			var standardSize2 = document.getElementById('standardSize2').checked;
   			var standardBed1 = document.getElementById('standardBed1').checked;
   			var standardBed2 = document.getElementById('standardBed2').checked;
   		 	var kindStandard = document.getElementById('kindStandard').checked;
   			if(!standardBed1 && !standardBed2 ){
   				alert('침대 종류를 선택해주세요');
   			}else if(!standardSize1 && !standardSize2){
   				alert('객실 크기를 설정해주세요')
   			}else if(!kindStandard){
   				alert('약관에 동의해주세요');
   				document.getElementById('kindStandard').focus();
   			}else 
   			document.getElementById('paymentStandard').style.display = 'inline-block';
   			}
		
		
   		function showPaymentDeluxe() {
   			var deluxebed1 = document.getElementById('deluxeBed1').checked;
   			var deluxesize1 = document.getElementById('deluxeSize1').checked;
   			var deluxebed2 = document.getElementById('deluxeBed2').checked;
   			var deluxesize2 = document.getElementById('deluxeSize2').checked;
     	   var kindD = document.getElementById('kindD').checked;
   			if(!deluxebed1 && !deluxebed2 ){
   				alert('침대 종류를 선택해주세요');
   			}else if(!deluxesize1 && !deluxesize2){
   				alert('객실 크기를 설정해주세요')
   			}else if(!kindD){
   				alert('약관에 동의해주세요');
   				document.getElementById('kindD').focus();
   			}else 		
   			document.getElementById('paymentDeluxe').style.display = 'inline-block';
   			}
		
		
   		function showPaymentPremium() {
   			var premiumbed1 = document.getElementById('premiumBed1').checked;
   			var premiumsize1 = document.getElementById('premiumSize1').checked;
   			var premiumbed2 = document.getElementById('premiumBed2').checked;
   			var premiumsize2 = document.getElementById('premiumSize2').checked;
     	   var kindP = document.getElementById('kindP').checked;
   			if(!premiumbed1 && !premiumbed2 ){
   				alert('침대 종류를 선택해주세요');
   			}else if(!premiumsize1 && !premiumsize2){
   				alert('객실 크기를 설정해주세요')
   			}else if(!kindP){
   				alert('약관에 동의해주세요');
   				document.getElementById('kindP').focus();
   			}else 			
   			document.getElementById('paymentPremium').style.display = 'inline-block';
   			}
		
		
   		function showPaymentSuite() {
   			var suitebed1 = document.getElementById('suiteBed1').checked;
   			var suitesize1 = document.getElementById('suiteSize1').checked;
   			var suitebed2 = document.getElementById('suiteBed2').checked;
   			var suitesize2 = document.getElementById('suiteSize2').checked;
     	   var kindS = document.getElementById('kindS').checked;
   			if(!suitebed1 && !suitebed2 ){
   				alert('침대 종류를 선택해주세요');
   			}else if(!suitesize1 && !suitesize2){
   				alert('객실 크기를 설정해주세요')
   			}else if(!kindS){
   				alert('약관에 동의해주세요');
   				document.getElementById('kindS').focus();
   			}else 				
   			document.getElementById('paymentSuite').style.display = 'inline-block';
   			}
		
		
   		function showPaymentPremiumSuite() {
   			var premiumSuitebed1 = document.getElementById('premiumSuiteBed1').checked;
   			var premiumSuitesize1 = document.getElementById('premiumSuiteSize1').checked;
   			var premiumSuitebed2 = document.getElementById('premiumSuiteBed2').checked;
   			var premiumSuitesize2 = document.getElementById('premiumSuiteSize2').checked;
     	   var kindPS = document.getElementById('kindPS').checked;
   			if(!premiumSuitebed1 && !premiumSuitebed2 ){
   				alert('침대 종류를 선택해주세요');
   			}else if(!premiumSuitesize1 && !premiumSuitesize2){
   				alert('객실 크기를 설정해주세요');
   			}else if(!kindPS){
   				alert('약관에 동의해주세요');
   				document.getElementById('kindPS').focus();
   			}else 						
   			document.getElementById('paymentPremiumSuite').style.display = 'inline-block';
   			}
		
    	    	
    	function showMenuStandard() {
    		var chkout = document.getElementById('datepicker2').value;
    		var reservP = document.getElementById('reserv_person').value;
    		if(!chkout){
    			alert('체크 아웃 시간을 입력해주세요');
    			window.scrollTo(0,0);
    			document.getElementById('datepicker2').focus();
    		}else if(reservP<1 || reservP>10){
    			alert('최소인원은 1명 최대인원은 10명까지 입니다');
    			document.getElementById('reserv_person').focus();
    			window.scrollTo(0,0);
    		}else{
			document.getElementById('hideMenuStandard').style.display = 'inline-block';
    		}
			
		}
    	function showMenuDeluxe() {
    		var chkout = document.getElementById('datepicker2').value;
    		var reservP = document.getElementById('reserv_person').value;
    		if(!chkout){
    			alert('체크 아웃 시간을 입력해주세요');
    			window.scrollTo(0,0);
    			document.getElementById('datepicker2').focus();
    		}else if(reservP<1 || reservP>10){
    			alert('최소인원은 1명 최대인원은 10명까지 입니다');
    			document.getElementById('reserv_person').focus();
    			window.scrollTo(0,0);
    		}else{
    			
			document.getElementById('hideMenuDeluxe').style.display = 'inline-block';
    		}
			
		}
    	function showMenuPremium() {
    		var chkout = document.getElementById('datepicker2').value;
    		var reservP = document.getElementById('reserv_person').value;
    		if(!chkout){
    			alert('체크 아웃 시간을 입력해주세요');
    			window.scrollTo(0,0);
    			document.getElementById('datepicker2').focus();
    		}else if(reservP<1 || reservP>10){
    			alert('최소인원은 1명 최대인원은 10명까지 입니다');
    			window.scrollTo(0,0);
    			document.getElementById('reserv_person').focus();
    		}else{
    			
			document.getElementById('hideMenuPremium').style.display = 'inline-block';
    		}
			
		}
    	function showMenuSuite() {
    		var chkout = document.getElementById('datepicker2').value;
    		var reservP = document.getElementById('reserv_person').value;
    		if(!chkout){
    			alert('체크 아웃 시간을 입력해주세요');
    			window.scrollTo(0,0);
    			document.getElementById('datepicker2').focus();
    		}else if(reservP<1 || reservP>10){
    			alert('최소인원은 1명 최대인원은 10명까지 입니다');
    			window.scrollTo(0,0);
    			document.getElementById('reserv_person').focus();
    		}else{
    			
			document.getElementById('hideMenuSuite').style.display = 'inline-block';
    		}
			
		}
    	function showMenuPremiumSuite() {
    		var chkout = document.getElementById('datepicker2').value;
    		var reservP = document.getElementById('reserv_person').value;
    		if(!chkout){
    			alert('체크 아웃 시간을 입력해주세요');
    			window.scrollTo(0,0);
    			document.getElementById('datepicker2').focus();
    		}else if(reservP<1 || reservP>10){
    			alert('최소인원은 1명 최대인원은 10명까지 입니다');
    			window.scrollTo(0,0);
    			document.getElementById('reserv_person').focus();
    		}else{
    			
			document.getElementById('hideMenuPremiumSuite').style.display = 'inline-block';
    		}
			
		}
    	
    	function hideMenuPremiumSuite() {
    		document.getElementById('hideMenuPremiumSuite').style.display = 'none';
    		window.scrollTo(0,0);
		}
    	function hideMenuSuite() {
    		document.getElementById('hideMenuSuite').style.display = 'none';
    		window.scrollTo(0,0);
		}
    	function hideMenuPremium() {
    		document.getElementById('hideMenuPremium').style.display = 'none';
    		window.scrollTo(0,0);
		}
    	function hideMenuDeluxe() {
    		document.getElementById('hideMenuDeluxe').style.display = 'none';
    		window.scrollTo(0,0);
		}
    	function hideMenuStandard() {
    		document.getElementById('hideMenuStandard').style.display = 'none';
    		window.scrollTo(0,0);
		}
    </script>
</body>
</html>