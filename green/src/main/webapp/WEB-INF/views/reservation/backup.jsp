<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 STEP 2 - 객실 선택</title>
	  <script type="text/javascript" src="${pageContext.request.contextPath}"></script>
<link href="${pageContext.request.contextPath}/resources/css/info1.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ksks.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/hotel1.js"></script>
<style>
.hideMenu{
text-align: center;
background-color: rgb(245,245,245);
width: 1300px;
height: 200px;
left: 310px;
position: relative;
display: none;

}
.hideMenu > p{
	font-size: 15px;
}
.hidePayment{
	width: 1300px;
height: 200px;
margin: 0 auto;
}
</style>
</head>
<body>

<%@ include file="../header/header.jsp" %>

   		<form:form action="step3" commandName="reservForm">	
   		<br><br>
   	<p style="text-align: center; font-size: xx-large;">STEP 2<br><strong>객실 선택</strong></p><br><br>
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
      <div class="hideMenu" id="hideMenuStandard">
    	<p><strong>침대 선택</strong></p>
    	<input type="radio" name="bed" value="double" checked="checked">더블
    	<input type="radio" name="bed" value="twin">트윈<br><br>
    	<p><strong>객실 크기 선택</strong></p>
    	<input type="radio" name="size" value="60" checked="checked">60m²
    	<input type="radio" name="size" value="70">70m²<br><br>
    	<p><strong>옵션 선택</strong></p>
    	<input type="radio"  name="option" value="x" checked="checked">없음
    	<input type="radio"  name="option" value="breakfast">조식

       	<div class="hidePayment" style="margin-top:20px;">
       	<div>
       	<br><label>요구  사항<br>
       	<textarea rows="3" cols="25" placeholder="예시)추가 배드를 요청합니다" style="text-align: left;"></textarea></label><br>
       	</div>
    	<h3>객실 요금</h3>
    	<p>세금 및 봉사료</p>
    	<h3>총 결제금액</h3>
    			<input type="hidden" name="reserv_kind" value="Standard">
    			<input type="hidden" name="reserv_price" value="0">
    	    	<input type="submit" value=""  
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/reserved.png'); 
                width: 128px; height: 49px; background-color: white;">
    	<a href="#">
    	<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="hideMenuStandard()" style="position: relative; top:-20px;">
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
      <div class="hideMenu" id="hideMenuDeluxe">
    	<p><strong>침대 선택</strong></p>
    	<input type="radio" name="bed" value="double" checked="checked">더블
    	<input type="radio" name="bed" value="twin">트윈<br><br>
    	<p><strong>객실 크기 선택</strong></p>
    	<input type="radio" name="size" value="60" checked="checked">60m²
    	<input type="radio" name="size" value="70">70m²<br><br>
    	<p><strong>옵션 선택</strong></p>
    	<input type="radio"  name="option" value="x" checked="checked">없음
    	<input type="radio"  name="option" value="breakfast">조식

       	<div class="hidePayment" style="margin-top:20px;">
       	<div>
       	<br><label>요구  사항<br>
       	<textarea rows="3" cols="25" placeholder="예시)추가 배드를 요청합니다" style="text-align: left;"></textarea></label><br>
       	</div>
    	<h3>객실 요금</h3>
    	<p>세금 및 봉사료</p>
    	<h3>총 결제금액</h3>
    	<input type="hidden" name="reserv_kind" value="Deluxe">
    	<input type="hidden" name="reserv_price" value="0">
    	    	<input type="submit" value="" 
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/reserved.png'); 
                width: 128px; height: 49px; background-color: white;">
    	<a href="#">
    	<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="hideMenuDeluxe()"  style="position: relative; top:-20px;">
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
      <div class="hideMenu" id="hideMenuPremium">
    	<p><strong>침대 선택</strong></p>
    	<input type="radio" name="bed" value="double" checked="checked">더블
    	<input type="radio" name="bed" value="twin">트윈<br><br>
    	<p><strong>객실 크기 선택</strong></p>
    	<input type="radio" name="size" value="60" checked="checked">60m²
    	<input type="radio" name="size" value="70">70m²<br><br>
    	<p><strong>옵션 선택</strong></p>
    	<input type="radio"  name="option" value="x" checked="checked">없음
    	<input type="radio"  name="option" value="breakfast">조식

       	<div class="hidePayment" style="margin-top:20px;">
       	<div>
       	<br><label>요구  사항<br>
       	<textarea rows="3" cols="25" placeholder="예시)추가 배드를 요청합니다" style="text-align: left;"></textarea></label><br>
       	</div>
    	<h3>객실 요금</h3>
    	<p>세금 및 봉사료</p>
    	<h3>총 결제금액</h3>
    	<input type="hidden" name="reserv_kind" value="premium">
    	<input type="hidden" name="reserv_price" value="0">
    	<input type="submit" value="" 
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/reserved.png'); 
                width: 128px; height: 49px; background-color: white;">
    	<a href="#">
    	<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="hideMenuPremium()"  style="position: relative; top:-20px;">
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
      <div class="hideMenu" id="hideMenuSuite">
    	<p><strong>침대 선택</strong></p>
    	<input type="radio" name="bed" value="double" checked="checked">더블
    	<input type="radio" name="bed" value="twin">트윈<br><br>
    	<p><strong>객실 크기 선택</strong></p>
    	<input type="radio" name="size" value="60" checked="checked">60m²
    	<input type="radio" name="size" value="70">70m²<br><br>
    	<p><strong>옵션 선택</strong></p>
    	<input type="radio"  name="option" value="x">없음
    	<input type="radio"  name="option" value="breakfast" checked="checked">조식(기본제공)

       	<div class="hidePayment" style="margin-top:20px;">
       	<div>
       	<br><label>요구  사항<br>
       	<textarea rows="3" cols="25" placeholder="예시)추가 배드를 요청합니다" style="text-align: left;"></textarea></label><br>
       	</div>
    	<h3>객실 요금</h3>
    	<p>세금 및 봉사료</p>
    	<h3>총 결제금액</h3>
    	<input type="hidden" name="reserv_kind" value="Suite">
    	<input type="hidden" name="reserv_price" value="0">
        	<input type="submit" value="" 
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/reserved.png'); 
                width: 128px; height: 49px; background-color: white;">
    	<a href="#">
    	<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="hideMenuSuite()"  style="position: relative; top:-20px;">
    	</a>
    	</div>
    	</div>
    <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/premium_suite.jpg" onclick="Premium_Suite()">
        </div>
        <div class="content">
            <h2>premium Suite Room</h2>
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
      <div class="hideMenu" id="hideMenuPremiumSuite">
    	<p><strong>침대 선택</strong></p>
    	<input type="radio" name="bed" value="double" checked="checked">더블
    	<input type="radio" name="bed" value="twin">트윈<br><br>
    	<p><strong>객실 크기 선택</strong></p>
    	<input type="radio" name="size" value="60" checked="checked">60m²
    	<input type="radio" name="size" value="70">70m²<br><br>
    	<p><strong>옵션 선택</strong></p>
    	<input type="radio"  name="option" value="x">없음
    	<input type="radio"  name="option" value="breakfast" checked="checked">조식(기본제공)
        <div class="hidePayment" style="margin-top:20px;">
       	<div>
       	<br><label>요구  사항<br>
       	<textarea rows="3" cols="25" placeholder="예시)추가 배드를 요청합니다" style="text-align: left;"></textarea></label><br>
       	</div>
    	<h3>객실 요금</h3>
    	<p>세금 및 봉사료</p>
    	<h3>총 결제금액</h3>
    	<form:hidden path="reserv_kind" value="premiumsuite" />
    	<form:hidden path="reserv_price" value="1" />
        	<input type="submit" value="" 
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/reserved.png'); 
                width: 128px; height: 49px; background-color: white;">
    	<a href="#">
    	<img src="${pageContext.request.contextPath}/resources/images/cancel.png" onclick="hideMenuPremiumSuite()"  style="position: relative; top:-20px;">
    	</a>
    	</div>
    	</div>

       <hr class="devide">
   	</form:form>
   	
 
   
	<%@ include file='../footer/footer.jsp'%>
    <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript">
    	function showMenuStandard() {
			document.getElementById('hideMenuStandard').style.display = 'inline-block';
			
		}
    	function showMenuDeluxe() {
			document.getElementById('hideMenuDeluxe').style.display = 'inline-block';
			
		}
    	function showMenuPremium() {
			document.getElementById('hideMenuPremium').style.display = 'inline-block';
			
		}
    	function showMenuSuite() {
			document.getElementById('hideMenuSuite').style.display = 'inline-block';
			
		}
    	function showMenuPremiumSuite() {
			document.getElementById('hideMenuPremiumSuite').style.display = 'inline-block';
			
		}
    	
    	function hideMenuPremiumSuite() {
    		document.getElementById('hideMenuPremiumSuite').style.display = 'none';
		}
    	function hideMenuSuite() {
    		document.getElementById('hideMenuSuite').style.display = 'none';
		}
    	function hideMenuPremium() {
    		document.getElementById('hideMenuPremium').style.display = 'none';
		}
    	function hideMenuDeluxe() {
    		document.getElementById('hideMenuDeluxe').style.display = 'none';
		}
    	function hideMenuStandard() {
    		document.getElementById('hideMenuStandard').style.display = 'none';
		}
    </script>
</body>
</html>