<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/kind.css'/>	
	<script src="${pageContext.request.contextPath}/resources/js/hotel1.js"></script>
	
</head>
<body>

<%@ include file="../header/header.jsp" %>
<br><br>
   		<form action="/reservation/step1">
   	  <h1 class="mar3">객실선택</h1>
    <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/standard1.jpg" 
            onclick="window.open('<c:url value='standard'/>','standard','width=1000, height=700');">
        </div>
        <div class="content">
            <h2>Standard Room</h2>
            <P>스탠다드</P>
        </div>
        <div class="content">
            <h2>KRW 123,123~</h2>
            <P>평균가 1박<br>(세금,봉사료 별도)</P>
        </div>
        <div class="btnsize">
            <input type="submit" value="예약하기" >
        </div>
    </div>
    <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/deluxe.jpg" 
             onclick="window.open('<c:url value='deluxe'/>','deluxe','width=1000, height=700');">
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
            <input type="submit" value="예약하기">
        </div>
    </div>
    <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/premium.jpg" 
            onclick="window.open('<c:url value='premium'/>','premium','width=1000, height=700');">
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
            <input type="submit" value="예약하기">
        </div>
    </div>
    <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/suite.jpg" 
             onclick="window.open('<c:url value='suite'/>','suite','width=1000, height=700');">
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
            <input type="submit" value="예약하기">
        </div>
    </div>
    <hr class="devide">
    <div class="contain">
        <div> 
            <img class="pic" alt="" src="${pageContext.request.contextPath}/resources/images/premium_suite.jpg" 
            onclick="window.open('<c:url value='premium_Suite'/>','premium_Suite','width=1000, height=700');">
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
            <input type="submit" value="예약하기">
        </div>
    </div>
    <hr class="devide">
   	</form>
   	
 
   
	<%@ include file='../footer/footer.jsp'%>
    <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>