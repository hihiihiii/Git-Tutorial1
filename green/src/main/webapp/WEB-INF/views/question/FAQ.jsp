<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Hotel</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ksks.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/FAQlist.css">
</head>

<body>
    <%@ include file="../header/header.jsp"%>
   <div class="container">
        <div class="jumbotron">
            <h1 class="text-center">FAQ</h1>
        </div>
        <div class="top">
        	<h3>자주하는 질문</h3>
        </div>
        <div class="search">
            <div class="search_detail">
               <div class="search_detail_2">
                   <input type="text" >
                   <input type="button" value="검색">
               </div>
            </div>
        </div>
        <div clas="QnA_board">
        	<ul class="QnA_ul">
        		<li id="fist">
        			<a onclick="meno()">
        				<span class="fist">기타</span>
        				<span>Q. 객실 업그레이드 쿠폰 사용방법이 궁급합니다.</span>
        			</a>
        			</li>
        				<li>
        					<div id="hideinfo" style="display:none" class="hideinfo">
        						<p class="QnA_A">A. 객실 업그레이드 쿠폰은 GOLD 등급 (차상위 2매, 스위트 1매), DIAMOND 등급 (차상위 4매, 스위트 1매)가 발행 됩니다.<br>
									등급 업그레이드로 인한 등급 조정 시 발행되고 있습니다.<br><br>
									<strong>[쿠폰 사용 방법]</strong><br>
									1. 지류 쿠폰 또는 APP 쿠폰함 내 모바일 쿠폰 확인 후 쿠폰 번호를 예약하신 호텔 지점의 객실 예약실로 직접 신청해주십시오.<br>
								   (본사 예약실 01-2345-6789)<br><br>
									2. 체크인 시, 모바일 쿠폰 또는 지류 쿠폰을 프론트에 제시해 주시면 사용 완료 처리를 도와드립니다.<br><br>
									※ 쿠폰 사용은 예약 시점에 해당 예약실로 <strong><u>사전 신청</u></strong>을 해야 하며, 투숙 호텔의 객실 사정에 따라 제공이 제한될 수 있습니다.<br>
									※ 객실 <strong>예약자 명</strong>과 멤버십 <strong>회원 명</strong>이 동일하여야만 업그레이드 쿠폰 적용이 가능합니다.<br>
									※ 객실 업그레이드 쿠폰은 공식 호텔 홈페이지, 공식 APP 또는 예약실을 통한 직접 예약에 한하여 적용 가능합니다.<br>
									※ 객실 업그레이드 쿠폰은 등급에 따른 회원특전 사항에 포함되므로 각 <strong>투숙 기간</strong> 동안 <strong>1회</strong>에 한해 제공되며,<br>
								    모든 혜택은 다른 혜택과 중복 제공되지 않습니다.<br>
									※ 객실 업그레이드 서비스는 1회 투숙 시 <strong>최대 3박</strong>까지 제공됩니다. 3박을 초과하는 투숙 시에는 추가 요금을<br>
								    별도 지불하시거나,  업그레이드 이전 객실로의 룸 체인지가 필요합니다.<br>
									※ 쿠폰 사용의 상세한 세부 조건은 이용 약관을 참고 해주십시오.<br><br><br>
									감사합니다.
								</p>
        					</div>
	        			</li>
	        		</ul>
	        		<ul class="QnA_ul">
        			<li id="fist">
        				<a onclick="meno_1()">
        					<span class="fist">기타</span>
        					<span>Q. 객실 패키지 이용 금액은 포인트 적립 기준이 어떻게 되나요?</span>
        				</a>
        			</li>
        				<li>
        					<div id="hideinfo_1" style="display:none">
        						<p class="QnA_A">
        						A. 객실 패키지 이용 금액은 최종 결제 금액에서 세금과 봉사료를 제외한 객실료와 식음 이용금액이 각 적립률에 따라 계산됩니다.<br><br>
								① 총 결제 금액에서 세금과 봉사료 그리고 식음 이용 금액(조식, 패키지 內 제공 식음, 레스토랑 이용 후 룸차지 금액)을 제외한
							    순수 객실료의 등급별 적립률<br>
								② 총 결제 금액에서 세금과 봉사료가 제외된 식음 이용 금액(조식, 패키지 內 제공 식음, 레스토랑 이용 후 룸차지 금액)의
							    등급별 적립률<br>
								<br>아울러, 등급 점수에 반영 시에는 숙박 매출 및 식음매출은 객실 및 식음 순매출액을 기준으로 산정됩니다.<br>
								(세금 및 봉사료, 부대 시설 및 서비스 이용료, 예약 취소 위약금 등 제외).<br>
								<br>또한, 식음매출 및 식음이용횟수는 식음 영업장에서 직접 이용 금액을 결제하는 경우에 한하여 산정됩니다.
								<br>※ 결제 시 업장 직원에게 멤버십 번호를 꼭 말씀해주세요.<br>
								<br>만약, 식음 이용 금액을 숙박 요금 결제 시 합산하여 결제하는 경우(룸차지)에는 숙박매출 및 숙박횟수만 산정되며,<br>
								이 경우 숙박매출은 식음매출을 포함한 금액 기준으로 산정됩니다.<br>
								<br><br>
								위 사항은 회원약관 <u>제 5조 멤버십 회원 등급 및 특전</u> 의 세부사항에서 자세히 확인하실 수 있습니다.
								<br><br>
								감사합니다.</p>
        					</div>
        				</li>
        			</ul>
        			<ul class="QnA_ul">
        			<li id="fist">
        				<a onclick="meno_2()">
        					<span class="fist">기타</span>
        					<span>Q. 로그인이 안돼요.</span>
        				</a>
        			</li>
        				<li>
        					<div id="hideinfo_2" style="display:none" class="hideinfo">
        						<p class="QnA_A">
        							A. <strong>[온라인 가입 회원]</strong><br>
									<br>- 로그인 창의 <u>"비밀번호 찾기"</u>로 임시 비밀번호 수령 후 로그인<br>
									- 멤버십 번호를 모르신다면 "그린멤버십 번호 또는 아이디 찾기"를 통해 조회 가능합니다.<br> 
									<br><strong>[오프라인 가입 및 전환 신청 회원]</strong><br>
									<br>⑴ 멤버십 번호를 알고 계신다면<br>
									- 홈페이지 로그인 창 하단의 <u>"온라인 계정 활성화"</u> 등록<br>
									- 멤버십 번호를 ID 대신 입력, 발급 받은 임시 비밀번호 대소문자 구분 입력하여 로그인 <br>
									<br>⑵ 멤버십 번호를 모르신다면<br>
									- 로그인 창의 <u>"그린멤버십 번호 또는 아이디 찾기"</u>를 통하여 조회 <br>
									- 찾으신 멤버십 번호를 이용하여 <u>"온라인 계정 활성화"</u> 등록<br>
									- 멤버십 번호를 ID 대신 입력, 발급 받은 임시 비밀번호 대소문자 구분 입력하여 로그인<br>
									<br>⑶ 온라인 계정 활성화 등록이 <strong>이미</strong> 되어있다고 조회 시, <u>비밀번호 찾기</u>를 통해 로그인<br>
									<br>※ 오프라인 가입 회원의 경우 프론트에서 가입 신청서 작성 후 발급받은 임시카드 번호가 그린멤버십 멤버십 번호입니다.<br>
									※ 오프라인 가입 회원은 그린멤버십 멤버십 번호를 ID 대신 사용하셔야 로그인이 가능합니다.<br>
									※ 로그인 성공 시 마이 페이지에서 개인 비밀번호로 변경해 주십시오.<br>
									※ 영문명 철자, 성과 이름의 순서 또는 개인 정보가 다르게 입력된 경우 회원 조회가 불가합니다.<br>
									    회원 가입 시 입력하신 정보와 동일 정보를 입력 해 주십시오.<br>
									<br>감사합니다.<br>
								</p>
        					</div>
        				</li>
        			</ul>
        			<ul class="QnA_ul">
        			<li id="fist">
        				<a onclick="meno_3()">
        					<span class="fist">기타</span>
        					<span>Q. 회원정보 수정은 어떻게 하나요?<span>
        				</a>
        			</li>
        				<li>
        					<div id="hideinfo_3" style="display:none">
        						<p class="QnA_A">
        							A. 간단한 회원 개인정보 수정은 홈페이지 로그인 후 <strong>마이페이지</strong>의 <strong>'프로필 수정'</strong>에서 변경 가능합니다.<br>
										<strong>※ 다만</strong>, 회원명 및 주소지 변경은 멤버십 센터를 통해 수정하실 수 있습니다.<br>
										멤버십 센터로 전화주시어 변경 신청하시거나 문의글에 변경 내용을 전달해 주십시오.<br><br>
										감사합니다.
								</p>
        					</div>
        				</li>
        			</ul>
        			<ul class="QnA_ul">
        			<li id="fist">
        				<a onclick="meno_4()">
        					<span class="fist">기타</span>
        					<span>Q. 그린멤버십 포인트 적립은 어떻게 하나요?<span>
        				</a>
        			</li>
        				<li>
        					<div id="hideinfo_4" style="display:none">
        						<p class="QnA_A">
        							A. <strong>1. 객실 이용</strong><br>
									① 객실 예약 시 그린멤버십 멤버십 번호를 객실 예약실 또는 프론트을 통해 등록해 주십시오.<br>
									② 실 투숙 완료 후 <strong>체크 아웃 익일</strong> 9시경 <strong>자동 적립</strong>이 이루어집니다.<br>
									③ 포인트는 결제 금액에서 세금과 봉사료를 제외한 <strong>객실 3%</strong>와 <strong>식음 1%</strong>가 각각 이루어집니다.<br>
									※ 객실 예약자 명과 회원 명이 동일해야만 포인트 적립이 가능합니다.<br>
									<br><strong>2. 식음 이용</strong><br>
									① 현장 결제 시, 해당 업장의 직원에게 그린멤버십 멤버십 번호를 말씀해주십시오. 미 제시 시에는 적립되지 않습니다.<br>
									    - 결제 일 <strong>익일</strong> 자동적립이 완료됩니다.<br>
									※ 유료 멤버십 회원의 경우에도 결제 시 그린멤버십 멤버십 번호를 반드시 같이 제시해 주시어야 적립이 가능합니다.  <br>
									포인트 적립 누락 시에는 FAQ의 포인트 조정신청 방법을 참고하시어 포인트 조정 신청해 주십시오.<br>
									<br>감사합니다.<br>
								</p>
        					</div>
        				</li>
        			</ul>
        			<ul class="QnA_ul">
        			<li id="fist">
        				<a onclick="meno_5()">
        					<span class="fist">그린멤버십가입</span>
        					<span>Q. 그린멤버십 가입은 어떻게 하나요?<span>
        				</a>
        			</li>
        				<li>
        					<div id="hideinfo_5" style="display:none" class="hideinfo">
        						<p class="QnA_A">
        							A. 그린멤버십는 무료 멤버십으로 온라인 또는 오프라인에서 가입이 가능합니다.<br>
									<br>1. 온라인<br>
									그린멤버십 홈페이지 우측 상단의 '그린멤버십 가입' 버튼을 클릭해주신 후 가입을 진행하시면 됩니다.<br>
									가입 신청 완료 후 멤버십 번호가 즉시 부여됩니다.<br>
									가입 이전 객실 예약을 하신 경우 해당 호텔의 객실 예약실 또는 멤버십 센터에 신규 멤버십 번호를 알려주시면<br>
									회원님의 예약에 신규 멤버십 정보 업데이트를 진행하고 있습니다.<br>
									<br>2. 오프라인<br>
									<br>오프라인의 경우 각 호텔 프론트에서 가입 신청서를 작성해주시면 프론트에서 멤버십 번호 발급 후 임시카드를 드립니다.<br>
									임시 카드의 멤버십 번호를 이용하시어 홈페이지 로그인 창 하단의 '온라인 계정 활성화"를 진행 해 주십시오.<br>
									추후 로그인 시 해당 멤버십 번호를 ID 대용으로 사용하시면 됩니다.<br>
									3. 온라인/오프라인 가입 모두 모바일 홈페이지 또는 그린호텔 APP 로그인 후 MY PAGE 내의 '모바일  카드' 사용이 가능합니다.<br>
									<br>감사합니다.
								</p>
        					</div>
        				</li>
        			</ul>
        			<ul class="QnA_ul">
        			<li id="fist">
        				<a onclick="meno_6()">
        					<span class="fist">포인트 적립/사용</span>
        					<span>Q. 포인트 적립률은 어떻게 되나요?<span>
        				</a>
        			</li>
        				<li>
        					<div id="hideinfo_6" style="display:none" class="hideinfo">
        						<p class="QnA_A">
        							A. 객실 이용금액의 3%, 식음 이용금액의 1%를 적립해 드립니다. (Silver 등급 기준)<br>
									적립률은 등급에 따라 상이하며 결제 금액에서 세금과 봉사료가 제외된 금액으로 계산됩니다.<br>
									<br>패키지 상품 및 룸차지 금액의 경우 객실 매출 및 식음 매출에 대한 적립률은 각 항목의 적립률에 따라 적립됩니다.<br>
									또한 객실 상품의 경우 포인트 비적립 대상에 대해서는 포인트가 적립되지 않습니다.<br>
									<br>비적립 대상에 대한 보다 자세한 사항은 FAQ 게시판을 참조하시기 바랍니다.<br>
									<br>감사합니다.
								</p>
        					</div>
        				</li>
        			</ul>
        			<ul class="QnA_ul">
        			<li id="fist">
        				<a onclick="meno_7()">
        					<span class="fist">포인트 적립/사용</span>
        					<span>Q. 포인트가 적립되지 않는 객실상품은 무엇인가요?<span>
        				</a>
        			</li>
        				<li>
        					<div id="hideinfo_7" style="display:none" class="hideinfo">
        						<p class="QnA_A">
        							A. 그린멤버십 약관 제6조 3항에 의거, 다음과 같은 항목은 포인트 적립에서 <strong>제외</strong>됩니다.<br>
									<br>(1)장기 숙박 요금, 도매 요금, 무료 객실, House Use 객실, 임직원 특별 요금, 가족 요금, 여행사를 통한 요금      <br>
									(2)계약에 포함되지 않은 요금<br>
									(3)조직, 연회, 협회 등 특정 단체가 결제하는 투숙<br>
									(4)삼성상품권 구매 금액, 유료 멤버십 가입비 결제금액<br>
									(5)임대 영업장 내 결제금액<br>
									(6)인터넷, 미니바, 유료 TV, 객실 핸드폰요금, 객실 내 전화요금, 간이침대 대여비, 소매제품 구매비용, 세금 및 봉사료,<br>
									비즈니스 센터 이용요금, 세탁비용, 교통비, 피트니스클럽 이용비용, 서울신라호텔 어번 아일랜드 이용비용, 연회비용, No-Show비용, 객실 예약취소 페널티비용<br>
									<br>감사합니다.<br>
								</p>
        					</div>
        				</li>
        			</ul>
        			<ul class="QnA_ul">
        			<li id="fist">
        				<a onclick="meno_8()">
        					<span class="fist">포인트 조정</span>
        					<span>Q. [포인트 조정 신청]포인트 적립이 누락되었습니다.<span>
        				</a>
        			</li>
        				<li>
        					<div id="hideinfo_8" style="display:none">
        						<p class="QnA_A">
        							A. 포인트가 누락된 경우는 다음과 같은 이유 일 수 있습니다.<br>
									<br>1) 그린멤버십 <strong>가입 이전</strong> 이용한 내역에 대해서는 포인트가 <strong>적립되지 않습니다.</strong><br>
									다만 기존 멤버십(다이너스티/골드클럽) 회원이셨던 경우에는 기존 멤버십 계정에 포인트가 적립되어 있을 수 있습니다.<br>
									기존 포인트는 그린멤버십 홈페이지 <u>구 멤버십포인트 사용안내</u> 메뉴에서 확인 또는 해당 구 멤버십 센터로 문의 주십시오.<br>
									<br>2)포인트 <strong>비적립 대상 객실 상품</strong>을 이용한 경우 포인트가 적립되지 않습니다.<br>
									보다 자세한 사항은 FAQ 게시판을 참조하시기 바랍니다.<br>
									이러한 경우가 아님에도 불구하고 포인트가 누락되었다면, 다음의 절차를 진행해 주십시오. <br>
									<br><strong><포인트 조정 신청 방법></strong><br>
									① 그린멤버십 홈페이지에 로그인 후 MY PAGE에 접속합니다.<br>
									② <u>"포인트 조정신청"</u> 메뉴를 클릭합니다.<br>
									③ 이용 지점 및 업장명 그리고 결제 <strong>영수증 사진</strong>을 첨부하여 포인트 <strong>조정</strong> 신청을 완료해주십시오.<br>
									※ 식음 업장을 이용하신 경우, 영수증을 꼭 첨부하여 주셔야 포인트 조정이 가능합니다.<br>
									※ 첨부파일의 경우 <strong>5MB 이하</strong>의 크기로 첨부 해주십시오.<br>
									<br>신청 후 1~2주일 내(영업일 기준) 멤버십센터에서 검토 후 대상 포인트를 적립하여 드립니다.<br>
									조정 처리 완료 시 처리 결과 및 상세 내용을 메일을 통해 안내드리오니 참고 부탁드립니다.<br>
									<br>감사합니다.<br>
								</p>
        					</div>
        				</li>
        			</ul>
			</div>

            <div class="page">
                <ul class="pagintion">
                    <li><a href="#">이전</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">다음</a></li>
                </ul>
            </div>
            <form class="form">
            <c:if test="${!empty authInfo.admin_code}">
                <input type="submit" value="글쓰기">
                </c:if>
             </form>
        </div>
    </div>
    <%@ include file="../footer/footer.jsp"%>
    <script>
    function meno(){
    var meno=document.getElementById('hideinfo');
    if(meno.style.display != "none"){    	
    	meno.style.display="none";
    }else if(meno.style.dispaly != "block"){
    	meno.style.display="block";
    }
    }
    function meno_1(){
        var meno=document.getElementById('hideinfo_1');
        if(meno.style.display != "none"){    	
        	meno.style.display="none";
        }else if(meno.style.dispaly != "block"){
        	meno.style.display="block";
        }
        }
    function meno_2(){
        var meno=document.getElementById('hideinfo_2');
        if(meno.style.display != "none"){    	
        	meno.style.display="none";
        }else if(meno.style.dispaly != "block"){
        	meno.style.display="block";
        }
        }
    function meno_3(){
        var meno=document.getElementById('hideinfo_3');
        if(meno.style.display != "none"){    	
        	meno.style.display="none";
        }else if(meno.style.dispaly != "block"){
        	meno.style.display="block";
        }
        }   
    function meno_4(){
        var meno=document.getElementById('hideinfo_4');
        if(meno.style.display != "none"){    	
        	meno.style.display="none";
        }else if(meno.style.dispaly != "block"){
        	meno.style.display="block";
        }
        }  
    function meno_5(){
        var meno=document.getElementById('hideinfo_5');
        if(meno.style.display != "none"){    	
        	meno.style.display="none";
        }else if(meno.style.dispaly != "block"){
        	meno.style.display="block";
        }
        }  
    function meno_6(){
        var meno=document.getElementById('hideinfo_6');
        if(meno.style.display != "none"){    	
        	meno.style.display="none";
        }else if(meno.style.dispaly != "block"){
        	meno.style.display="block";
        }
        }  
    function meno_7(){
        var meno=document.getElementById('hideinfo_7');
        if(meno.style.display != "none"){    	
        	meno.style.display="none";
        }else if(meno.style.dispaly != "block"){
        	meno.style.display="block";
        }
        }  
    function meno_8(){
        var meno=document.getElementById('hideinfo_8');
        if(meno.style.display != "none"){    	
        	meno.style.display="none";
        }else if(meno.style.dispaly != "block"){
        	meno.style.display="block";
        }
        } 
    </script>
</body>