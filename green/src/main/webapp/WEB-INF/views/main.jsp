<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Green Hotel</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="resources/css/main.css">
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
    <script>
        $(document).ready(function () { $("#datepicker").datepicker(); }); 
    </script>
    <style type="text/css">
    .img_text {
            position: absolute;
            top: 700px;
            left: 0%;
            font-size: 5rem;
            z-index: 2;
            text-align: center;
             width: 1920px;
            height: 300px;
        }

.img_text2 {
            position: absolute;
            top: 57%;
            left: 100%;
            width: 1920px;
            height: 300px;
            z-index: 2;
            text-align: center;
        }

.item>p>a {
            color: white;
        }

.item>p {
            color: white;
            font-size: 2rem;
        }
    html,body{
	overflow-x: hidden;
}
.reserv:hover{
 background-image: url(${pageContext.request.contextPath}/resources/images/reserv.png);
 color:transparent;
}
    </style>
</head>

<BODY>
     <header>
        <%@ include file="header/header.jsp" %>
    </header> 
    <div class="section_img">
        <div class="ani">
            <ul class="animation">
                <div class="item" id="1" style=" background-image: url(resources/images/room98.jpg);"></div>
                <div class="item" id="2" style="background-image: url(resources/images/room99.jpg);"></div>
                <div class="item" id="3" style="background-image: url(resources/images/room97.jpg);"></div>
                <div class="item img_text">
                    <p><a href="#" style="font-size:4rem;"><strong>Live beyond expectation</strong></a></p>
                </div>
                <div class="item img_text2">
                    <p><strong>언택트 시대에 여행 분위기를 내고싶다면</strong><br>
                        <a href="#"><strong style="font-size:5rem; color: white">Green hotel Untact package</strong></a>
                    </p>
                    
                </div>
            </ul>
        </div>
    </div><br><br>
    <form action="<c:url value='/reservation/step1' />" method="POST">
    <div class="section reservations">
        <table class="reserv" style="font-size:large; margin: 0 auto; text-align: center; border: 1px solid black; width: 800px; height: 100px; ">
            <tr>
                <td><strong>체크인</strong></td>
                <td></td>
                <td><strong>체크아웃</strong></td>
                <td colspan="2"><strong>객실</strong></td>
                <td colspan="2"><strong>성인</strong></td>
                <td colspan="2"><strong>어린이</strong></td>
                <td rowspan="2"><input type="submit" value="" style="border: none; background-image:url('resources/images/search.png'); width: 32px; height: 32px; background-color: white;">
                </td>
            </tr>
            <tr>
                <td>11월 17일</td>
                <td></td>
                <td>11월 18일</td>
                <td colspan="2">1개</td>
                <td colspan="2">1명</td>
                <td colspan="2">0명</td>
            </tr>
            </table><br><br><br>
            </div>
 			</form>
            <hr>
            <div class="midBox">
            <img alt="클린 서비스" src="resources/images/towel3.jpg" style="margin-top: 20px; padding-bottom: 20px; border-bottom: 1px solid black;">
   			<br>
            </div>
            <div class="movie" style="padding-top: 100px;  position: relative; left:400px; top: 30px;">
            <iframe width="1200" height="700" src="https://www.youtube.com/embed/hhTV4-IWOVI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
     
     		 <div> 
            <img src="resources/images/seattle.jpg" style="margin-top: 200px; padding-bottom: 100px;">
            </div>
            <div class="rewards" style="background:rgb(245,245,245)">
            <p style="z-index: 5; text-align: center; font-size:xx-large; position: relative; top: 10px;"><strong>그린 호텔 리워즈 혜택</strong><br>
            <img src="resources/images/rewards.png">
            </div>
	
    <footer>
        <%@ include file="footer/footer.jsp" %>
    </footer>
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
        
    	
    
    </script>

</body>

</html>