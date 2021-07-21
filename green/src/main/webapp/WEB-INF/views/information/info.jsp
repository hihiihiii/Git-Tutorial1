<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/info.css'/>
</head>
<body>

<%@ include file="../header/header.jsp" %>

    <div class="header1"><br><br><br>
        <h1>소개</h1>
        <p>
            그린호텔은 대한민국 최대규모 호텔입니다. <br>
            품격있는 서비스와 시설로 고객에게 깊은 감동을 주는 브랜드를 지향하고 있습니다. <br>
            <br>
            균형 있는 라이프스타일을 추구하며 품격의 가치를 아는 고객을 위해 세련되고 모던한 감각을 지닌 
            안락한 객실과 세심한 배려가 묻어나는 서비스를 준비합니다.
            <br>
            또한 그린호텔이란 이름 그대로 친환경적이고 주변 자연과 조화를 이루며, 모던하고 시크한 감성의 스위트 룸을 갖춘 호텔입니다 
            <br>
            그린호텔에서 품격 있는 휴식으로 삶의 균형을 완성해가시길 바랍니다
        </p>
       
         <hr class="devide" style="margin-top: 2%; margin-bottom: 2%;">
        <div class="mar3">
	        <img class="img1 rig" src="${pageContext.request.contextPath}/resources/images/hotel3.jpg" alt="">
	        <img class="img1 lef" src="${pageContext.request.contextPath}/resources/images/hotel4.jpg" alt="">
        </div>
        <h2>vision</h2>
        <div class="container1">
        <div class="textbox clr">
            <h3>비전1</h3>
            <hr class="devide" style="margin-top: 2%; margin-bottom: 2%;">
            <p>
                우리는 premium LifeSytle을<br>
                선도하는 그린인으로서<br>
                각각의 분야에서<br>
                최고의 전문가로 성장한다.
            </p>
        </div>
        <div class="textbox clr">
            <h3>비전2</h3>
             <hr class="devide" style="margin-top: 2%; margin-bottom: 2%;">
            <p>
                우리는 더 많은 고객이<br>
                다양한 생활영역에서<br>
                그린호텔만의 품격과<br>
                자부심을 경험케 한다.
            </p>
        </div>
        <div class="textbox clr">
            <h3>비전3</h3>
             <hr class="devide" style="margin-top: 2%; margin-bottom: 2%;">
            <p>
                우리는 지속적인 혁신과<br>
                성장을 통해 인류가<br>
                더 나은 삶을 누릴 수 있도록<br>
                기여한다.
            </p>
        </div>
    </div>
        <h3>오시는길</h3>
        <br>
    </div>
        <div class="header2" style="">
            <div id="daumRoughmapContainer1604324248934" class="root_daum_roughmap root_daum_roughmap_landing"></div>
            <div>
                <ul>
                    <li><span class="box">지하철</span><p>수원역 13번출구 앞 아이메카 빌딩 </p></li>
                    <br>
                    <li><span class="box">버스</span><p>일반: 151, 5, 5-2, 60, 66, 66-4, 7-2, 88, 88-1, 13-1, 13-5, 7-1, 310</p></li>
                    <br>
                    <li><span class="box">주소</span><p>경기도 수원시 팔달구 매산로1가 11-12, </p></li>
                    <br>
                    <li><span class="box">연락처</span>010-1234-1234</li>
                </ul>
                <br>
            </div>
        </div>
	
   
	<%@ include file="../footer/footer.jsp" %>
	
	<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
	
	
	<script charset="UTF-8">
		new daum.roughmap.Lander({
			"timestamp" : "1604324248934",
			"key" : "22rke",
			"mapWidth" : "450",
			"mapHeight" : "300"
		}).render();
	</script>
	
	
    <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>