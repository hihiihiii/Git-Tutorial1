<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
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
	<div class="container" >
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login" >
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-12">
								<a href="#" class="active" id="login-form-link" style="color : black;">로그인</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<!---->
								<form:form commandName="loginCommand">
								<form:errors class="errors" style="color : red;"/>
									<div class="form-group">
										<form:input path="user_id" class="form-control" placeholder="아이디"/>
										<form:errors path="user_id" class="errors" style="color : red;"/>
										<!-- <input type="text" name="user_id" id="user_id" tabindex="1" class="form-control" placeholder="아이디"> -->
									</div>
									<div class="form-group">
										<!-- <input name="user_pwd" id="user_pwd" tabindex="2" class="form-control" placeholder="비밀번호"> -->
										<form:password path="user_pwd" class="form-control" placeholder="비밀번호"/>
										<form:errors path="user_pwd" class="errors" style="color : red;"/>
									</div>
									<div class="form-group text-center">
										<!-- <input type="checkbox" name="저장하기" id="rememberId">
										<label for="rememberId"> 기억하기</label> -->
											아이디 기억하기 
											<form:checkbox path="rememberId"/>
											
									</div>
										
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" class="form-control btn btn-login" style="background-color:rgb(238,238,207); color:black; border-style:none;" value="로그인하기">
											</div>
										</div>
									</div>
								</form:form>
								 
								<div><a href="javascript:popupOpen()" class="text-center" style="color:black;">아이디/비밀번호가 생각이 안나시나요? </a> /
								<a href="<c:url value='/register/step1'/>">회원가입</a>
								</div>
								
								
								
							</div>
						</div>
					</div>
				
				</div>
			</div>
		</div>
	</div>
    <br>
 	 <footer>
		<%@ include file="../footer/footer.jsp" %>
	</footer>
	
	<script type="text/javascript">
		
		function popupOpen(){
	
			var popUrl = "${pageContext.request.contextPath}/findPw/find_passView";	//팝업창에 출력될 페이지 URL
	
			var popOption = "width=600, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
	
				window.open(popUrl,"",popOption);
	
			}

	//-->

	</script>



	
	
</body>
</html>