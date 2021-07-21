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
<title>예약 STEP 0 - 호텔 선택</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/jquery-ui-1.12.1/datepicker-ko.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
  <script type="text/javascript" src="${pageContext.request.contextPath}"></script>

    <script>
        $(document).ready(function () { $("#datepicker").datepicker(); }); 
    </script>
</head>
<body>
<header>
<%@ include file="../header/header.jsp" %>
</header>
<br><br>
<div>
<p style="text-align: center; font-size: xx-large;">STEP 0<br><strong>호텔 선택</strong></p>
</div><br><br><br><br>
    <form:form action="step2" commandName="reservForm">
 <div class="section reservation">
        <table class="reserv" style="font-size:large; margin: 0 auto; text-align: center; border: 1px solid black; width: 500px; height: 100px;">
            <tr>
                <td colspan="5"><strong style="text-align: center;">호텔 선택</strong></td>
                <td></td>
                <td></td>
				<td></td>
				<td></td>
				<td></td>
                <td rowspan="2"><input type="submit" value="${email}" name="email"
                style="border: none; background-image:url('${pageContext.request.contextPath}/resources/images/search.png'); 
                width: 32px; height: 32px; background-color: white; color:transparent;">
                </td>
            </tr>
            <tr>
              	<td colspan="5"><select  style="text-align: center; border: none; font-size: large;">
              	<option>그린 호텔 수원</option>
              	<option>그린 호텔 서울</option>
              	<option>그린 호텔 제주</option>
              	<option>그린 호텔 시애틀</option>
              	</select></td>
                <td></td>
                <td></td>
				<td></td>
				<td></td>
				<td></td>
            </tr>
            </table><br>
            <div>
            	<p style="font-size:large; text-align: center;"><strong>원하시는 호텔을 선택해주세요</strong></p>
            </div>
            </div>
	</form:form>
	<br><br><br><br><br><br><br><br><br>

<footer>
<%@ include file="../footer/footer.jsp" %>
</footer>
</body>
</html>