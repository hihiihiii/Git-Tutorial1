<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>호텔</title>
  	<script type="text/javascript" src="${pageContext.request.contextPath}"></script>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/ksks.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/js/ksks.js" ></script>
    <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="<c:url value="/resources/js/ksks.js" />"></script>
    
</head>

<body>
	<header>
		<%@ include file="../header/header.jsp" %>
	</header>
   <br>
   <br>
 <!-- login -->
 <div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-12">
							<a href="#" class="active" id="register-form-link" style="color : black;">회원가입</a>
						</div>
					</div>
					<hr>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<!---->
					
							<!-- <form id="register-form"  name="frm" action="index.html" method="post" role="form" style="display: block;"> -->
							<form:form action="step3" commandName="formData" name="frm" class="sign-form" method="post" onsubmit="return validate();">
								<div class="form-group">
									<!-- <input type="text" name="userid" id="userid" tabindex="1" class="form-control" placeholder="아이디" value=""> -->
									아이디 :
									<form:input path="user_id" class="form-control" name="user_id" maxlength="12" placeholder="아이디는 4~12자의 영문 대소문자"/>
									<form:errors path="user_id"/>
								</div>
								
								<div class="form-group">
								관리자 코드 : 
									<form:input path="admin_code" class="form-control" name="admin_code"/>
									<br>
									<p style="color : red;"> * 관리자 코드를 입력하지 않거나 일치하지 않으면 회원으로 가입</p>	
								</div>
								
								<div class="form-group">
									<!-- <input type="password" name="userpassword" id="password" tabindex="2" class="form-control" placeholder="비밀번호"> -->
									비밀번호 :
									<form:password path="user_pwd" class="form-control" name="user_pwd" maxlength="15" placeholder="패스워드는 8~15자의 영문 대소문자와 특수문자 숫자로만 입력"/>
									<form:errors path="user_pwd"/>
								</div>
								
								<div class="form-group">
									<!-- <input type="password" name="confirm-password" id="confirm-password" tabindex="3" class="form-control" placeholder="비밀번호 확인"> -->
									비밀번호 확인 :
									<form:password path="confirmPassword" class="form-control" name="confirmPassword" maxlength="15" placeholder="비밀번호와 동일하게 입력"/>
									<form:errors path="confirmPassword"/>
								</div>
								
								<div class="form-group">
								<!-- <input type="email" name="email" id="email" tabindex="4" class="form-control" placeholder="이메일 주소" value=""> -->
									이름 :
									<form:input path="user_name" class="form-control" name="user_name" maxlength="4" placeholder="이름은 2~4자의 한글로만 가능"/>
									<form:errors path="user_name"/>
								</div>
								
								<!-- form:checkbox -->
								<div class="form-group">
									<h4><label for="gender">성별 :</label>
									<input type="radio" name="gender" value="1"> 남자
									<input type="radio" name="gender" value="2"> 여자</h4>
								</div>
								
								<div class="form-group">
									<!-- <input type="text" name="user_birth"  tabindex="5" class="form-control" placeholder="생일 ex)1998-11-28"> -->
									전화번호 :
									<form:input path="user_tel" class="form-control" name="user_tel" placeholder="ex) 010-1234-5678"/>
									<form:errors path="user_tel"/>
									
								</div>
								<div class="form-group">
								 	이메일 :
									<!-- <input type="text" name="user_phone"  tabindex="6" class="form-control" placeholder="전화번호 정규화"> -->
									
									<form:input path="user_email" class="form-control" placeholder="ex) green@green.com "/>
									<form:errors path="user_email"/>
								</div>
								
								
								<%-- <div class="form-group">
								 	생일 :
									<!-- <input type="text" name="user_phone"  tabindex="6" class="form-control" placeholder="전화번호 정규화"> -->
									<form:input path="user_birtday" class="form-control"/>
									<form:errors path="user_birtday"/>
								</div>  --%>

								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" name="register-submit" id="register-submit"
												class="form-control btn btn-register" style="background-color:rgb(238,238,207); color:black; border-style:none;" value="회원가입" onclick="return signUp()">
										</div>
									</div>
								</div>
							</form:form>
							
							<!-- </form> -->
							<!---->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
    <br>

<script type="text/javascript">
function validate() {
    var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규
    var reg = /^[가-힣]{2,4}$/; //이름 정규식
    var regex = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/; // 비밀번호 정규식
    var regExp = /^\d{3}-\d{3,4}-\d{4}$/; // 전화번호 정규식
    
   	var user_id = document.getElementById("user_id");
    var user_pwd = document.getElementById("user_pwd");
    var user_name = document.getElementById("user_name");
    var user_tel = document.getElementById("user_tel");
    
    if(!check(re,user_id,"아이디는 4~12자의 영문 대소문자와 숫자로만 입력")) {
        return false;
    }
    if(!check(regex,user_pwd,"패스워드는 8~15자의 영문 대소문자와 특수문자 숫자로만 입력")) {
        return false;
    }
    if(!check(reg,user_name,"이름은 2~4자의 한글로만 가능")) {
        return false;
    }
    if(!check(regExp,user_tel,"전화번호 형식이 맞지않습니다.")) {
        return false;
    }
    
    if(frm.user_name.value=="") {
        alert("이름을 입력해 주세요");
        frm.user_name.focus();
        return false;
    }
    if(frm.gender[0].checked==false 
    		&&
    		frm.gender[1].checked==false){
    	alert("성별을 입력해주세요.")
    	return false;
    }
       
}

function check(re, what, message) {
    if(re.test(what.value)) {
        return true;
    }
    alert(message);
    what.value = "";
    what.focus();
    //return false;
}


</script>
    
    <footer>
		<%@ include file="../footer/footer.jsp" %>
	</footer>
  
</body>
</html>