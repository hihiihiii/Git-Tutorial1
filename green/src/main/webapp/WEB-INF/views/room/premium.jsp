<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/detail.css'/>	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/hotel1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
</head>
<body>
    <div class="head">
        <h1>Green Hotel</h1>
        <table class="box1">
            <tr>
                <td class="td1">Premium Room</td>
                <td class="td2">상품소개</td>
            </tr>
        </table>
    </div>
    <div class="tex1">
        <h1 style="font-style: italic; font-weight: lighter;">Premium Room</h1>
        <br>
        <p>기간: xxxx년 xx월 xx일 ~ xx월 xx일 (자바로)</p>
        <p> <span style="font-weight: bolder;">※투숙일에 따라 금액이 변동될 수 있습니다.</span>
            <br> ※본 패키지는 멤버쉽 또는 카드사 할인등의 중복할인이 적용되지 않습니다.
        </p>
    </div>
    <div class="kind">
        <table class="pyo" border="1">
            <tr>
                <td class="td1 vertical1">프리미엄 싱글 룸 <br>(60m²)</td>
                <td class="td2 vertical2"><p>가격 : 123,123~(자바로)</p><p>실내수영장 2인, 헬스장, 라운지</p></td>
            </tr>
        </table>
    </div>
    <div class="kind">
        <table class="pyo horizon" border="1">
            <tr>
                <td class="td1 vertical1">프리미엄 더블 룸<br>(65m²)</td>
                <td class="td2 vertical2"><p>가격 : 123,123~(자바로)</p><p>실내수영장 4인, 헬스장, 라운지</p></td>
            </tr>
        </table>
    </div>
    <div class="contain1 ptop ">
        <div class="imgbox rig2">
            <p class="pbottom">Premium Room</p>
            <img class="img2" src="${pageContext.request.contextPath}/resources/images/premium.jpg" alt="">
            <p class="ptop pbottom0">세계적인 수준의 침구류를 갖춘 여유로운 객실</p>
        </div>
        <div class="imgbox lef2">
            <p class="pbottom">GYM</p>
            <img class="img2" src="${pageContext.request.contextPath}/resources/images/gym1.jpg" alt="">
            <p class="ptop pbottom0">운동과 휴식을 조화롭게 즐길 수 있는 실내 체육관</p>
        </div>
    </div>
    
    <div class="pp">
        <p class="ptop1 pbottom0">Lounge</p>
    </div>
    
    <div class="contain1 ptop">
        <div class="imgbox rig2">
            <img class="img2" src="${pageContext.request.contextPath}/resources/images/lounge1.jpg" alt="">
        </div>
        <div class="imgbox lef2">
            <img class="img2" src="${pageContext.request.contextPath}/resources/images/lounge2.jpg" alt="">
        </div>
    </div>
    
    <div class="pp">
    	<p class="ptop pbottom"> 도심 전경이 그림처럼 펼쳐지는 공간에서 다양한 서비스를 즐기는 특별한 경험.</p>
    </div>
	    
    <div class="pp">
        <p class="ptop pbottom0">Indoor Swimming Pool</p>
    </div>
    
    <div class="contain1 ptop">
        <div class="imgbox rig2">
            <img class="img2" src="${pageContext.request.contextPath}/resources/images/pool1.jpg" alt="">
        </div>
        <div class="imgbox lef2">
            <img class="img2" src="${pageContext.request.contextPath}/resources/images/pool2.jpg" alt="">
        </div>
    </div>
    
    <div class="pp height1">
        <div>
            <p class="ptop">대자연을 만끽하며 즐기는 수영과 휴식</p>
            <p>길이 25m, 너비 6m의 풀과 함께 건식 사우나와 실내 및 야외 자쿠지를 갖추고 있습니다.</p>
            <p>* 운영 시간 : 06:00~22:00</p>
            <p>* 평일에는 만 13세 이상 고객에 한해 이용 가능하며, 주말 및 공휴일에는 성인 보호자의 동반 하에 
                만 13세 미만 고객이 이용 가능합니다.</p>
            <p>* 매월 3번째 수요일 정기 휴무입니다.</p>   
        </div>
        <div class="pp height2">
            <p><strong>※ 피트니스 클럽 이용 안내</strong></p>
        </div>
        <div>
            <p> - 체련장(Gym), 실내 수영장, 실내 사우나(유료시설)는 매월 3번째 수요일 정기 휴무입니다.</p>
            <p> - 체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</p>
            <p> - 실내 수영장은 성인 고객 전용 시설로서, 안전을 위해 만 13세 이상인 고객에 한해 입장 가능합니다.</p> 
            <p>(주말 및 공휴일 : 성인 보호자의 보호하에 만 13세미만 고객입장이 가능하며, 
                신장 140cm미만 고객은 성인 보호자의 보호하에 구명조끼 착용 시 입장가능)</p>
            <p> - 적정 인원 초과 시 이용을 위해 대기하실 수 있습니다.</p>
        </div>
    </div>
    <div class="notice">
        <div class="ppp">
            <p style="float: left;"><strong>notice</strong></p>
            <p id="hdn" style="float: right;">▼</p>
        </div>    
    </div>

    <div id="notice1">
        <div class="ppp">
            <p>- 상기 이미지들은 연출된 예로 실제와 다를 수 있습니다.</p>
            <br>
            <p> - 본 상품은 체크인 당일 15시까지 예약 가능하며, 홈페이지 및 모바일 앱을 통한 온라인 예약만 가능합니다.</p>
            <p> - 라운지는 투숙객 전용 비즈니스 공간으로, 라운지 혜택이 포함된 상품을 이용하시는 객실 투숙객에 한해
                이용 가능합니다.</p>
            <p> - 본 상품은 성인 2인 1실 기준이입니다</p>
            <p> - 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.</p>
            <p> • 객실 1실 당 성인은 최대 4인까지만 투숙 가능합니다.</p>
            <p> - Check-in은 오후 3시, Check-out은 정오까지입니다.</p>
            <br>
            <p><strong>※ 문의Tel : 031-1234-1234 | E-mail : green@green.hotel</strong></p>
        </div>
    </div>
    
    <div class="notice mar5">
        <div class="ppp">
            <p style="float: left;"><strong>취소 및 환불규정</strong></p>
            <p id="hdn1">▼</p>
        </div>  
    </div>

    <div id="notice2">
        <div class="ppp">
            <p><strong>취소/변경 및 노쇼(No-show) 안내</strong></p>
            <p>숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.</p>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $("#hdn").on("click", function () {
                $("#notice1").fadeToggle("slow");
            });
        });

        $(document).ready(function () {
            $("#hdn1").on("click", function () {
                $("#notice2").fadeToggle("slow");
            });
        });
        // function open(){
        //     var notice1 = document.getElementById("ppp1");
        //     notice1.style.display = "none";
        // }
    </script>
    
    <div class="endbtn">
    	<input type="button" value="창닫기" onclick="closed()">    	
    </div>
    
</body>
</html>