<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/product.css'/>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header>
	
	<div class="container"> 
		<div class="middle">
			<h1 style="text-align: center; margin-top: 1%;">상세보기</h1>
			<hr class="devide">
			<div style="text-align: center; margin-top: 2%;">
			 <c:if test="${!empty authInfo && !empty authInfo.admin_code}">
			<a href="<c:url value='/product/update/${pro.product_number}'/>">
				<input type="button" value="수정">
			</a>
			</c:if>
			</div>
			
			<div class="img1">
				<img id="pic1" src="${pageContext.request.contextPath}/resources/images/${pro.product_url}.jpg" >
				<img id="pic2" src="${pageContext.request.contextPath}/resources/images/${pro.product_url}.png" >
				<div class="content">
					<h1 class="font" style="margin-top: 0px; padding-top: 0px;">${pro.product_name}</h1>
					<p class="font distance" style="color: red;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${pro.product_price}" /></p>
					<br>
					<p>배송정보</p>
					<p class="distance">일반배송 <span style="color: lightgray;">│</span> 0원</p>
					<hr class="devide1">
					<p>결제</p>
					<p>신용카드</p>
					<form:form action="${pageContext.request.contextPath}/product/step4" commandName="eshop" onsubmit="paymentEshop(); return false" name="eshop">
					<hr class="devide1">
					<div class="cnt">
						수량<input type="hidden" name="eshop_amount" value="4">
						<input type="hidden" name="eshop_name" value="${pro.product_name}">
						<input type="hidden" name="eshop_price" value="${pro.product_price}">
						<c:if test="${!empty authInfo}">
						<input type="hidden" name="eshop_id" value="${authInfo.user_id}">
						</c:if>
						<c:if test="${empty authInfo}">
						<input type="hidden" name="eshop_id" value="">
						</c:if>
					</div>
					<br>
					<hr class="ds" style="color: red;">
					<c:if test="${!empty authInfo}">		
						<input type="button" class="btn eshopBuy" value="결제" onclick="paymentProduct()">	
					</c:if>
					<c:if test="${empty authInfo}">
						<p>비회원은 구입하실 수 없습니다.</p><br>
						<a href="<c:url value='/login'/>">
						<input type="button" class="btn basket" value="로그인">		
						</a>
					</c:if>
					</form:form>	
					<c:if test="${!empty authInfo}">		
						<form:form commandName="cart" action="${pageContext.request.contextPath}/cart/cartList/${pro.product_number}/${authInfo.user_number}">
                 		 	<label>
	                     	<form:input path="cart_amount" id="cart_amount"/>
	                     		<input type="button" class="btn basket" value="장바구니" onclick="chk(this.form)">                                    
	                  		</label> 
                  		</form:form>
					</c:if>
				</div>
			</div>
			<div class="img2">
				<img class="smallpic" src="${pageContext.request.contextPath}/resources/images/${pro.product_url}.jpg" onclick="clicked1()">
				<img class="smallpic" src="${pageContext.request.contextPath}/resources/images/${pro.product_url}.png" onclick="clicked2()">
			</div>
			<div class="discript">
				<p class="font1"> ${pro.product_description}</p>			
			</div>
		</div>
	</div>
	
	
	
	<%-- <p>상품 번호 :</p><p> ${pro.product_number}</p>
	<p>상품 이름 :</p><p> ${pro.product_name}</p>
	<p>상품 가격 :</p><p> ${pro.product_price}</p>
	<p>상품 사진 :</p><p> ${pro.product_url}</p>
	<p>상품 정보 :</p><p> ${pro.product_description}</p>
	    <c:if test="${!empty authInfo && !empty authInfo.admin_code}">
	<a href="<c:url value='/product/update/${pro.product_number}'/>">
		<input type="button" value="수정">
	</a>
	</c:if>
	<br>
	<a href="<c:url value='/product/step1'/>">
		<input type="button" value="상품목록보기">
	</a> --%>
	<script type="text/javascript">
		function clicked1(){
	        var pic2 = document.getElementById("pic2");
	        pic2.style.visibility = "hidden" 
	        var pic1 = document.getElementById("pic1");
	        pic1.style.visibility = "visible"
	        
	    }
		function clicked2() {
			var pic1 = document.getElementById("pic1");
	        pic1.style.visibility = "hidden" 
	        var pic2 = document.getElementById("pic2");
	        pic2.style.visibility = "visible"
	       
		}
	   $(document).ready(function () {	
		$(".smallpic").hover(function() {
				$(this).addClass("sha", 10);
			}, function() {
				$(this).removeClass("sha", 100);
			});
		});
	   
	   function minus(){
		 
		 var cnt = document.getElementById("tex");
			cnt.value--;
		 		
			 if(cnt.value<1){
	               alert('한 개 이상부터 구매할수 있는 상품입니다');
	               cnt.value = 1;
	           }
        	   
           }
           
	   
	   function chk(theForm) {
		   console.log(theForm);
		var cart_amount = document.getElementById("cart_amount");
		   if(cart_amount.value==""){
			   alert('숫자를 입력하세요');
			   cart_amount.focus();
			   return false;
		   }
		   if(cart_amount.value<1){
			   alert('최소 한개 이상 입력하셔야 됩니다');
			   cart_amount.focus();
			   return false;
		   }
		   if(cart_amount.value>6){
			   alert('최대 6개까지 담을수 있습니다.');
			   cart_amount.focus();
			   return false;
		   }
		   if(isNaN(cart_amount.value)){
			   alert('숫자를 입력하세요');
			   cart_amount.focus();
			   return false;
		   }
		   theForm.submit();
		}
       
       function plus(){
    	   var cnt = document.getElementById("tex");
			cnt.value++;
           if(cnt.value>5){
               alert('구매 할 수있는 수량을 초과했습니다');
               cnt.value = 5;
           }
           
       }
       
       function paymentProduct() {
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
        		        document.eshop.submit();
        		        
        		        return true;
        		    } else {
        		        var msg = '결제에 실패하였습니다.';
        		        msg += '에러내용 : ' + rsp.error_msg;
        		    }
        		    alert(msg);
        		});
    	}
	
	</script>
		
		<footer>
        <%@ include file="../footer/footer.jsp" %>
    </footer>
</body>
</html>