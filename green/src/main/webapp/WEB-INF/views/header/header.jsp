<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script type="text/javascript" src="${pageContext.request.contextPath}"></script>
<link href="${pageContext.request.contextPath}/resources/css/head.css" rel="stylesheet" />
  <style type="text/css">
  
#hideInfo{
    background: white;
    border: 1px solid black;
    display: none;
    width: 200px;
    height: 230px;
    top: 103px;
    left: 1650px;
    position: absolute;
    z-index: 100;
    color: black;
    list-style: none;
}
#hideInfo a:hover{
      font-weight: bold;
   font-size: 1.05em;
}
  </style>
</head>
<body>
    <div class="header">
            <div class="headerBox">
                  <div id="logo">
                  <a href='<c:url value='/main'></c:url>'>
                     <img src="${pageContext.request.contextPath}/resources/images/1.png" alt="로고" class="mainLogo">
                     </a>
                     </div>
                       <c:if test="${!empty authInfo}"> <!-- authInfo안에 데이터가 있다면 (로그인상태)  -->
                  <div class="login">
                          <a href="#">
                           <img src="${pageContext.request.contextPath}/resources/images/login.png" alt="로그인중" class="login" onclick="login()">
                          </a>
                       </div>
                  </c:if>
                       
                        <c:if test="${empty authInfo}"> <!-- authInfo안에 데이터가 없다면 (로그아웃 상태)  -->
                  <div class="login">
                     <a href="#">
                           <img src="${pageContext.request.contextPath}/resources/images/login(2).png" alt="로그인" class="login" onclick="login()">
                          </a>
                    </div>
                  </c:if> 
                       
                    <div id="hideInfo"> 
                            <br>
                            <c:if test="${!empty authInfo}">
                            <p>${authInfo.user_name}님<br>환영합니다</p>
                            <br>
                            <p>
                             <c:if test="${authInfo.admin_code == null}">
                            		<a href="<c:url value='/product/info/${authInfo.user_id}'/>">내 상품 조회</a><br>
                            		<a href="<c:url value='/reservation/info/${authInfo.user_id}'/>">예약 정보 조회</a><br>		
                            	</c:if>
                             <c:if test="${authInfo.admin_code != null}">
                            		<a href="<c:url value='/reservation/infoAll'/>">예약 정보 보기</a><br>		
                            	</c:if>
                            <a href="<c:url value='/edit/changePassword'/>">회원 정보 수정</a><br>
                            <c:if test="${authInfo.admin_code != null}">
                            		<a href="<c:url value='/member/memberList'/>">회원관리페이지</a><br>		
                            	</c:if>
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/resources/images/iconcancel.png" id="cancel" alt="취소" onclick="cancel()">
                        </a>
                       <a href="<c:url value='/logout'/>">로그아웃</a>
                    </p>
                            </c:if> 
                            <c:if test="${empty authInfo}">
                      <p>그린 호텔에 오신 것을<br>환영합니다</p>
                            <br>
                            <p>
                            <a href="<c:url value='/register/step1'/>">회원 가입</a><br><br>
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/resources/images/iconcancel.png" id="cancel" alt="취소" onclick="cancel()">
                        </a>
                        <a href="<c:url value='/login'/>">로그인</a>
                    </p>
                            </c:if> 
                            
                    </div>
            </div>
    
    <!-- 메뉴 -->
    <div class="nav">
        <ul class="menu">
            <li class="link left"><a href="#" id="menu1">호텔 소개</a>
                <ul class="hidemenu">
                    <li style="border-top:2px solid black;"><a href="<c:url value='/information/info' />">그린 호텔 소개</a></li>
                    <li><a href="<c:url value='/room/kind' />">시설 안내</a></li>
                </ul>
            </li>
            <li class="link left"><a href="#" id="menu2">예약</a>
                <ul class="hidemenu">
                <c:if test="${empty authInfo}">
                <li style="border-top:2px solid black;"><a href="<c:url value='/reservation/step0Guest' />">비회원 예약하기</a></li>
                 </c:if>
                	<c:if test="${!empty authInfo}">
                    <li style="border-top:2px solid black;"><a href="<c:url value='/reservation/step1' />">예약하기</a></li>
                     </c:if>
                      <c:if test="${empty authInfo}">
                    <li><a href="<c:url value='${pageContext.request.contextPath}/reservation/infoGuest'/> ">비회원 예약 조회</a></li>
                    </c:if>
                     <c:if test="${!empty authInfo}">
                    <li><a href="<c:url value='${pageContext.request.contextPath}/reservation/info/${authInfo.user_id}'/> ">예약 조회</a></li>
                    </c:if>
                </ul>
            </li>
            <li class="link right"><a href="#" id="menu4">E-SHOP</a>
                <ul class="hidemenu">
                    <li style="border-top:2px solid black;"><a href="<c:url value='/product/step1' />">상품 구매</a></li>
                     <c:if test="${!empty authInfo.user_id}">
                    <li><a href="<c:url value='/product/info/${authInfo.user_id}'/>">내 상품 조회</a></li>
                    </c:if>
                    <li><a href="#">장바구니</a></li>

                </ul>
            </li>
            <li class="link right"><a href="#" id="menu3">소식</a>
                <ul class="hidemenu1">
                    <li style="border-top:2px solid black;"><a href="<c:url value='/notice/notice' />">공지사항</a></li>
                    <li><a href="<c:url value='/question/question/${authinfo}' />">문의 사항</a></li>
                    <li><a href="<c:url value='/question/FAQ' />">자주 묻는 질문</a></li>
                    <li><a href='<c:url value='/photography/photo'></c:url>'>포토그래피</a></li>
                </ul>
            </li>
        </ul>
    </div>
     </div>
     <script type="text/javascript">
    
     function login(){
         var menu = document.getElementById('hideInfo');
         menu.style.display = "inline-block";
 }
 
 function cancel(){
     var menu = document.getElementById('hideInfo');
         menu.style.display = "none";
 }
 
     </script>
</body>
</html>