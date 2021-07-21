<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MailSuccess</title>

	<script type="text/javascript" src="${pageContext.request.contextPath}"></script>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/ksks.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/js/ksks.js" ></script>
    <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="<c:url value="/resources/js/ksks.js" />"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-12 text-center">
								<h3>
									성공적으로 메일이	발송 되었습니다.
								</h3>
							</div>
						</div>
						<hr>
					</div>
				</div>
			</div>
		</div>
		<h2></h2>
		<input type="button" value="닫기" class="btn" onclick="popUpclose()">
	</div>
	<script type="text/javascript">
					function popUpclose() {
						self.opener = self;
						self.close();
					}
				</script>
</body>
</html>