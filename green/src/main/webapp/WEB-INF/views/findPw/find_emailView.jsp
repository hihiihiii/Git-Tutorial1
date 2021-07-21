<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<script type="text/javascript" src="${pageContext.request.contextPath}"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/ksks.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/ksks.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="<c:url value="/resources/js/ksks.js" />"></script>
</head>
<body>

	<div class="container">
		<div class="panel-heading">
			<div class="row">
				<div class="col-xs-12 text-center">
					<h3> <a href="#" class="active" id="login-form-link">이메일 중복체크</a></h3>
				</div>
			</div>
			<hr>
		</div>
		<form:form id="signupform" class="form-horizontal" role="form"
			commandName="green_member" method="POST">
			<div class="form-group">
				<label for="user_email" class="col-md-2 control-label">이메일</label>
				<div class="col-md-10">
					<input type="text" class="form-control" name="user_email">
				</div>

				<div class="col-md-offset-2 col-md-10">
					<div style="color: red; margin-top: 2px">
						<form:errors path="user_email" />
						<form:errors />
					</div>
				</div>
			</div>

			<div class="form-group" style="margin-left: 82%">
				<!-- Button -->

				<div class="col-md-offset-10 col-md-9">
					<button id="btn-signup" type="submit" class="btn btn-warning">확인</button>
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-12 control">
					<div
						style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
						해당 이메일 중복체크 검사</div>
				</div>
			</div>

		</form:form>
	</div>
</body>
</html>