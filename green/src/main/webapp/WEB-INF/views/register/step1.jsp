<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>호텔</title>
    <link rel="stylesheet" href='<c:url value="/resources/css/ksks.css"></c:url>'>
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.css"></c:url>'>
    <script src="<c:url value="/resources/js/ksks.js"/>"></script>
    <script src='<c:url value="http://code.jquery.com/jquery-3.1.1.min.js"></c:url>'></script>
    <script src="<c:url value="/resources/js/bootstrap.js"></c:url>"></script>
</head>

<body>
	<header>
		<%@ include file="../header/header.jsp" %>
	</header>
	
    <style type="text/css">
    .ptag{
        font-weight: bold;
    }
    </style>
    
	<form action="step2" method="post">
    <div class="container agreeWidth">
       <h2>홈페이지 이용약관</h2>
        <div class="agree">
            <div>
                    <p class="ptag">제 1 조 [목적]</p>
                    본 이용약관(이하 ‘약관’이라 합니다)은 금융감독원과 DART 오픈API 이용자(이하 ‘API 이용자’) 간에 금융감독원이 제공하는 DART 오픈API 서비스(이하 ‘API 서비스’)의 이용에 관한 제반 사항과 기타 필요한 사항을 규정함을 목적으로 합니다. <br>
                    <br>
                    <p class="ptag">제 2 조 [용어의 정의]</p>
                    ① 이 약관에서 사용하는 용어의 정의는 다음 각 호와 같습니다.<br>
                    가. 오픈API라 함은 Application Programming Interface 의 약자로, 정보 소유자가 정보 이용자에게 정보를 제공하기 위하여 정의한 규약을 말합니다.<br>
                    나. API 서비스라 함은 금융감독원 공시정보를 이용자들이 자유롭게 이용할 수 있도록 금융감독원에서 제공하는 서비스를 말합니다.<br>
                    다. 인증키라 함은 API 이용자가 API 서비스 이용허가를 받은 개인 혹은 기업임을 식별할 수 있도록 금융감독원이 API 이용자에게 개별적으로 부여하는 고유한 값을 말합니다.<br>
                    ② 이 약관에서 정하지 아니한 것은 관계 법령 및 이용 안내에서 정하는 바에 따르며, 그 외에는 일반 관례에 따릅니다.<br>
                    <br>
                    <p class="ptag">제 3 조 [적용범위]</p>
                    ① 본 약관은 금융감독원이 DART 홈페이지 화면에서 제공하는 이용자 맞춤 서비스(이하 ‘맞춤 서비스’)에 가입한 후, 본 약관에 동의한 자에 대하여 적용합니다.<br>
                    ② 본 약관에서 규정하지 않은 회원 관리에 관한 제반사항은 맞춤 서비스 이용 약관에 의합니다.<br>
                    <br>
                    <p class="ptag">제 4 조 [약관의 효력발생 및 변경]</p>
                    ① 본 약관은 API 서비스의 이용을 위하여 맞춤 서비스에 가입한 회원이 본 약관에 동의를 함으로써 효력이 발생합니다.<br>
                    ② API 서비스의 모든 서비스는 맞춤 서비스에 가입한 회원이 본 약관에 동의한 경우에 한하여 제공합니다.<br>
                    ③ 맞춤 서비스 회원이 API 서비스를 이용하기 위해서는 본 약관에 동의한 후 인증키 발급을 신청하여야 합니다.<br>
                    ④ 금융감독원은 필요한 경우 본 약관을 개정할 수 있으며, 이 경우 일정한 기간을 정하여 적용일자 및 변경사유를 명시한 사항을 전자우편 등의 방법으로 API 이용자에게 공지 또는 통지합니다.<br>
                    ⑤ 제4항에 따른 약관의 변경은 API 이용자가 동의함으로써 그 효력이 발생됩니다. 다만, 제4항에 따른 통지를 하면서 API 이용자에게 일정한 기간 내에 의사표시를 하지 않으면 동의한 것으로 본다는 뜻을 명확히 전달하였음에도 API 이용자가 명시적으로 거부의 의사표시를 하지 아니한 경우에는 API 이용자가 개정약관에 동의한 것으로 봅니다.<br>
                    ⑥ 약관의 변경 사실 및 내역을 확인하지 못하여 발생한 모든 손해에 대한 책임은 API 이용자에게 귀속됩니다.<br>
                    <br>
                    <p class="ptag">제 5 조 [API 서비스의 제공]</p>
                    ① API 이용자는 API 서비스를 이용함에 있어 인증키 신청 화면을 통하여 신청 후 금융감독원의 승인을 거쳐 인증키를 발급받아야 하며, 발급받은 인증키를 이용하여 API 서비스를 이용할 수 있습니다.<br>
                    ② 인증키 발급 신청시 API 이용자가 필수 입력해야하는 항목들은 성실히 입력되어야 합니다.<br>
                    ③ 금융감독원은 API 서비스 이용가능시간 또는 이용가능횟수를 지정 및 변경할 수 있으며 이를 홈페이지를 통하여 사전에 고지하여야 합니다.<br>
                    ④ API 서비스 이용자는 이용가능횟수 내에서만 API 서비스를 이용할 수 있으며, 만약 이용가능 횟수를 초과하여 이용하고자 할 경우에는 금융감독원에서 규정하는 서류 제출 등의 절차를 거쳐야 합니다.<br>
                    <br>
                    <p class="ptag">제 6 조 [인증키의 관리]</p>
                    ① 발급된 인증키는 인증키를 발급 신청한 API 이용자 외의 제3자가 이용할 수 없으며, 제3자가 사용한 사실이 드러난 경우 금융감독원은 해당 인증키의 사용을 중지할 수 있습니다.<br>
                    ② API 이용자는 1개의 인증키만을 발급받아 사용할 수 있으며, 어떠한 경우에도 2개 이상의 인증키를 발급받거나 그러한 시도를 하여서는 안됩니다.<br>
                    <br>
                    <p class="ptag">제 7 조 [서비스 이용 시 주의사항]</p>
                    ① API 이용자는 API 서비스를 이용한 결과를 구성함에 있어 다음 각 호에 해당하는 내용과 결합하여 구성할 수 없습니다.<br>
                    가. 공공질서 및 미풍양속에 반하는 경우<br>
                    나. 범죄적 행위에 관련되는 경우<br>
                    다. 국익 또는 사회적 공익을 저해하는 경우<br>
                    라. 타인의 명예를 손상시키거나 불이익을 주는 경우<br>
                    마. API 서비스에 위해를 가하는 등 서비스의 건전한 이용을 저해한 경우<br>
                    ② API 이용자는 API 서비스를 비상업적인 목적으로만 이용할 수 있으며, API 서비스를 이용한 결과에 대한 비용을 API 이용자가 제공하는 서비스의 이용자에게 청구해서는 안됩니다.<br>
                    ③ API 이용자는 API 서비스를 이용한 결과의 앞, 뒤, 중간 등에 다른 내용을 삽입하거나 왜곡할 수 없고, 타인으로 하여금 결과의 내용 및 의도 등을 오인하게 해서는 안됩니다. 또한 URL 등 API 서비스로 제공되는 모든 내용을 API이용자가 임의로 변조해서는 안됩니다.<br>
                    ④ 금융감독원에서 제공하는 API 서비스의 결과를 오픈 API 이용자가 왜곡한 경우 금감원은 오픈 API 이용자에게 형사적 책임을 물을 수 있습니다.<br>
                    <br>
                    <p class="ptag">제 8 조 [서비스의 제한]</p>
                    ① 금융감독원은 API 서비스의 범위를 제한하거나 별도의 이용 가능 시간 또는 이용가능 횟수를 지정할 수 있습니다.<br>
                    ② 금융감독원은 다음 각 호에 해당하는 경우 API 서비스 제공을 제한할 수 있으며, 이 경우 이를 API 이용자에게 사전에 고지하여야 합니다.<br>
                    가. 관련 법률 개정으로 인해 오픈API 서비스 제공 대상이 변경되어 더 이상 활용을 할 수 없을 경우<br>
                    나. 서비스 활용으로 인해 금융감독원의 업무에 지장을 초래는 경우<br>
                    다. DART의 인프라 성능 등에 지장을 초래하는 경우<br>
                    ③ 금융감독원은 API 이용자가 API 서비스에 대한 불법적인 해킹 시도, 비정상적인 방식을 통한 오남용 시도, 네트워크 사용 초과 등의 시도를 하는 경우 제2항의 규정에도 불구하고 즉시 해당 API 이용자의 사용을 중지할 수 있습니다.<br>
                    <br>
                    <p class="ptag">제 9 조 [API 이용자의 의무]</p>
                    ① API 이용자는 API서비스를 이용함에 있어서 본 약관에서 규정하는 사항과 기타 금융감독원이 정한 제반 규정, 공지사항 및 관계 법령을 준수하여야 합니다.<br>
                    ② API 이용자는 금융감독원의 업무에 방해가 되는 행위 또는 금융감독원의 명예를 손상시키는 행위를 해서는 안됩니다.<br>
                    ③ API 서비스를 이용함에 있어서 API 이용자의 행위에 대한 모든 책임은 당사자가 부담하며, API 이용자는 금융감독원을 대리하는 것으로 오해가 될 수 있는 행위를 해서는 안됩니다.<br>
                    <br>
                    <p class="ptag">제 10 조 [DART 오픈API 서비스의 저작권]</p>
                    ① 금융감독원이 제공하는 API 서비스 및 관련 프로그램의 저작권은 금융감독원에 있습니다.<br>
                    ② API 이용자는 API 서비스 이용 시 금융감독원 및 제3자의 저작권을 침해해서는 안됩니다.<br>
                    ③ 금융감독원의 API 서비스 이용 승낙으로 인하여 API 이용자가 결과에 대한 저작권 또는 사용권을 취득하는것은 아닙니다.<br>
                    ④ API 이용자는 API 서비스를 통하여 실시간으로 제공되는 결과를 이용자의 서비스와 연동할 수 있을 뿐이며, 결과를 복제 또는 저장하거나 전송할 수 없습니다.<br>
                    ⑤ API 이용자가 API 서비스를 이용한 결과를 사용하여 화면을 제작한 경우, 해당 화면에 “금융감독원 DART 공시정보” 를 사용한 결과임을 명시해야합니다. 다만, 금융감독원이 별도의 표시방식을 정한 경우에는 그에 따라야 합니다.<br>
                    <br>
                    <p class="ptag">제 11 조 [책임의 제한]</p>
                    ① 금융감독원은 API 서비스에 관하여 약관, 금융감독원이 정한 제반 규정, 이용 안내 및 관계법령을 준수하지 않은 이용으로 인한 결과에 대하여 책임을 지지 않습니다.<br>
                    ② 금융감독원은 API 서비스의 사용불능으로 인하여 API 이용자에게 발생한 손해에 대하여 책임을 지지 않습니다.<br>
                    ③ API 이용자가 공시정보를 편집하여 새로운 부가가치를 창출한 경우 금융감독원은 동 부가가치에 대한 책임을 지지 않습니다.<br>
                    ④ 금융감독원은 API 이용자가 API 서비스를 이용하여 기대하는 수익을 얻지 못하거나 상실한 것에 대하여 책임을 지지 않습니다.<br>
                    ⑤ 금융감독원은 API 이용자와 제3자 상호 간에 API 서비스를 매개로 발생한 분쟁에 대해 개입할 의무가 없으며, 이로 인한 손해를 배상할 책임도 없습니다.<br>
                    <br>
                    <p class="ptag">제 12 조 [이용자격 박탈]</p>
                    ① 금융감독원은 API이용자가 본 약관을 준수하지 않는 경우 서비스 사용 중지 및 이용자격을 박탈할 수 있습니다.<br>
                    ② API 서비스 이용상 API 이용자의 귀책사유로 인하여 금융감독원에 손해가 발생한 경우 금융감독원은 본 약관에 따른 계약의 해지와는 별도로 손해배상을 청구할 수 있습니다.<br>
                    ③ API 서비스 이용으로 금융감독원과 API 이용자간에 발생한 분쟁에 관한 소송의 경우 그 관할법원은 금융감독원의 본사소재지(서울시 영등포구 여의대로 38) 을 관할하는 법원으로 합니다.<br>
            </div>
            
            <style>
                .btnChk
                {   width: 100%;
                    height: 34px;
                    padding: 6px 12px;
                    font-size: 14px;
                    line-height: 1.42857143;
                    background-color: antiquewhite;
                }
            </style>
            <p class="agreeChk"><input type="checkbox" name="agree" id="chk1" class="chk1"><label for="chk1">홈페이지 이용약관에 동의합니다.(동의하지 않을경우 가입이 불가합니다.)</label></p>
            
            <div class="col-sm-3 col-sm-offset-6">
                <input type="button" name="cancle" id="btncan" name="btncan" class="btn btnChk" value="취소">
            </div>
            <div class="col-sm-3">
                <!-- <input type="button" name="register-submit" id="register-submit" tabindex="6" 
                    class="form-control btn btn-register" value="확인"> -->
                <input type="submit" name="btnSave" id="btnSave" name="btnSave" class="btn btnChk" value="확인">
            </div>
       </div>
	</form>
       <script>
       $(function(){
            agree_CheckedChanged();
         });
            
            //체크박스 체크 선택 또는 해제할 때 상태 업데이트
            $("#chk1").change(function () {
                    agree_CheckedChanged();
            });
            
            function agree_CheckedChanged() {
                //페이지 로드할때 체크박스 확인.
                if($("#chk1").prop("checked")){
                        console.log("체크");
                        $("#btnSave").prop("disabled", false);
                }
                else{
                    console.log("언 체크");
                    $("#btnSave").prop("disabled", true);
                }
            }
</script>
       </div>
    </div>
    <br>

    

    <footer>
		<%@ include file="../footer/footer.jsp" %>
	</footer>
</body>
</html>