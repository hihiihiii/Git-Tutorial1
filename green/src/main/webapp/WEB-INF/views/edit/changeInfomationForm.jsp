<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
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
		<div class="container">
            <h1 class="text-center">개인정보 수정</h1>
            <hr>
            <div class="row">
             <div class="center-block">
              <div class="panel panel-primary">
               <div class="panel-heading" style="background-color:rgb(238,238,207); color:black; border-style:none;">개인정보 수정</div>
                <div class="panel-body">
               
                <form:form commandName="changePwdCommand" name="frm" onsubmit="return validate();">
	             
	             	 	이름 : 
	             	<form:input path="user_name" class="form-control" value="${authInfo.user_name}" readonly="true"/>
	             	<br>
	             
						 권한 : 
					 <form:input path="admin_code" class="form-control" value="${authInfo.admin_code}" readonly="true"/>
					 <br>
					 
					 	전화번호 : 
					 <form:input path="user_tel" class="form-control" value="${authInfo.user_tel}"/>
					 <br>
					 
						 이메일 : 
					 <form:input path="user_email" class="form-control" value="${authInfo.user_email}" /> <a href="javascript:popupOpen()" class="text-center" style="color:black;">이메일 중복확인</a>
					 <form:errors path="user_email"/>
	             	<br>
	             	<br>
	             	
	                 	비밀번호 :
	                 <form:password path="currentPassword" class="form-control" name="currentPassword" maxlength="15"/>
					 <form:errors path="currentPassword"/> <br>
	                  	새로운 비밀번호 :
					 <form:password path="newPassword" class="form-control" name="newPassword" maxlength="15"/>
					 <form:errors path="newPassword" />
					 <br> 
	                 <p> <input type="submit" class="btnChk btn" value="회원정보수정"> 
	               	 <input type="button" class="btnChk btn" value="뒤로가기" onclick="history.back()"> </p>
                 </form:form>
              </div>
             </div>
           </div>
           </div>
          </div>
          
          <script type="text/javascript">
		
		function popupOpen(){
	
			var popUrl = "${pageContext.request.contextPath}/findPw/find_emailView";	//팝업창에 출력될 페이지 URL
	
			var popOption = "width=600, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
	
				window.open(popUrl,"",popOption);
	
			}

		
				function validate() {
		   			 
		        	
		            var regExp = /^\d{3}-\d{3,4}-\d{4}$/; // 전화번호 정규식
		            var regex = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/; // 비밀번호 정규식
		            
		           	var user_tel = document.getElementById("user_tel");
		            var user_pwd = document.getElementById("currentPassword");
		            var user_pwd2 = document.getElementById("newPassword");
		            
		            
		        
		
		            if(!check(regExp,user_tel,"전화번호 형식이 맞지않습니다.")) {
		                return false;
		            }
		            if(!check(regex,user_pwd,"패스워드는 8~15자의 영문 대소문자와 특수문자 숫자로만 입력")) {
		                return false;
		            }
		            if(!check(regex,user_pwd2,"패스워드는 8~15자의 영문 대소문자와 특수문자 숫자로만 입력")) {
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