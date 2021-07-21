<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>호텔</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ksks.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">
    
    
</head>
<body>
  <%@ include file="../header/header.jsp"%>
    <div class="container">
        <div class="jumbotron">
            <h1 class="text-center">문의하기</h1>

        </div>
                    <form class="form" method="POST" name="frm">
            <input type="hidden" name="command" value="question_write">
            <input type="hidden" name="command" value="${authInfo.user_id}">
        <div>
        
            <table class="noticeboard" border="1">
                <tr class="tr_table">
                    <th>*구분</th>
                    <td>
                        <input type="radio" value="sroom" name="select" id="select">객실
                        <input type="radio" value="food" name="select" id="select">음식
                        <input type="radio" value="service" name="select" id="select">서비스
                        <input type="radio" value="etc" name="select" id="select">기타
                    </td>
                </tr>
                <tr>
                    <th>*제목</th>
                    <td>
                        <input type="text" name="qa_title" id="noticetitle" class="noticetitle" required="required">
                    </td>
                </tr>
                <tr>
                    <th>*내용</th>
                    <td>
                        <textarea class="textbox" name="qa_content" required="required"></textarea>
                    </td>
                </tr>
                <tr>
                	<th>문의자</th>
                		<td><input type="text" name="qa_name" value=" ${authInfo.user_name}" readonly="readonly"></td>
                </tr>
                <tr>
                    <th>*비밀번호</th>
                    <td>
                        <input type="password" name="qa_pwd" id="psaawor" class="box" required="required">
                    </td>
                </tr>
            </table>
            <div id="agreebox" style="text-align:left;">
                <h4><strong class="question_agree">필수적 개인정보 수집 및 이용에 대한 동의</strong></h4>
                <div class="Informationbox">
                    <p>
                        그린호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집및 이용하는데 동의합니다.<br>

                        <br> 필수적인 개인정보의 수집 ㆍ이용에 관한 사항<br>
                        <b>① 수집ㆍ이용 항목 | 성명(국문·영문), 이메일, 휴대전화</b><br>
                        <b>② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공</b><br>
                        <b>③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간</b><br>
                        ※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과<br> 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다.
                    </p>
                </div>
                <input type="checkbox" value="agree" id="agree" required="required">동의
            </div>
            <div id="agreebox" style="text-align:left;">
                <h4 class="question_agree"><strong>선택적 개인정보 수집 및 이용에 대한 동의</strong></h4>
                <div class="Informationbox">
                    <p>
                        그린호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집및 이용하는데 동의합니다.<br>
                        
                        <br>선택적인 개인정보의 수집 ㆍ이용에 관한 사항<br>
                        <b>① 수집ㆍ이용 항목 | 자택전화</b><br>
                        <b>② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공</b><br>
                        <b>③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간</b><br>
                        ※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과<br> 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다.
                    </p>
                </div>
                <input type="checkbox" value="agree" id="agree" required="required">동의
            </div>
        </div>
                <input type="submit" value="문의하기">
             </form>
        </div>

    <%@ include file="../footer/footer.jsp"%>
    
</body>
</html>