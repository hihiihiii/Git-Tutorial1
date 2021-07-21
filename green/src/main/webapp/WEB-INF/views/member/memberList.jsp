<%@page import="spring.vo.AuthInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 조회</title>
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



	<header>
		<%@ include file="../header/header.jsp"%>
	</header>
	<!-- controller에서 가져온 이름이cmd -->
	<br>
	<br>
	<br>
	<br>
	<div style="margin: 0 auto; text-align: center;">
		<p style="text-align: center; font-size: xx-large;">
			<strong>회원 정보 조회</strong>
		</p>
		<hr>
		<br> <br> <br>
		<!-- members 객체안에 데이터가 없지 않다면. -->
		<c:if test="${! empty Green_member}">
			<!-- 그내용을 출력해라  -->
			<table
				style="font-size: large; margin: 0 auto; text-align: center; border: 1px solid black; width: 1300px; height: 100px;">
				<tr>
					<th class="text-center">회원번호</th>
					<th class="text-center">이름</th>
					<th class="text-center">연락처</th>
					<th class="text-center">이메일</th>
					<th class="text-center">아이디</th>
					<th class="text-center">권한</th>
					<th class="text-center">가입날짜</th>
				</tr>
				<!-- 반복문  게시판 관련된 느낌.-->
				<c:forEach var="m" items="${Green_member}">
					<tr>
						<td>${m.user_number}</td>
						<td>${m.user_name}</td>
						<td>${m.user_tel}</td>
						<td>${m.user_email}</td>
						<td>${m.user_id}</td>
						<td>${m.admin_code}</td>
						<td>${m.user_birthday}</td>
					</tr>
				</c:forEach>
			</table>

			<div class="container">
				<div class="justify-content-center align-items-center">
				
					<!-- 회원삭제 -->
					<div class="form-group">
						<div class="col-sm-4">
							<div class="text-center">
								<input type="button" value="회원 삭제" onclick="showDelete()"
									style="border: none; background: white; font-size: large;">
							</div>
							<br> <br>
							<form action="delete" name="frm">
								<div id="hideDelete" style="display: none;">
									<p style="text-align: center; font-size: large;">
										<strong>회원 아이디를 입력하세요.</strong>
									</p>
									<br> <input type="text" name="user_id" value=""> 
									<input type="submit" class="btn" value="확인" >
									<form:errors path="user_id"/>
								</div>

							</form>
						</div>
					</div>

					<!-- 권한 부여 -->
					<div class="form-group">
						<div class="col-sm-4">
							<div class="text-center">
								<input type="button" value="권한 부여" onclick="showUpdate()"
									style="border: none; background: white; font-size: large;">
							</div>
							<br> <br>

							<form action="update" name="frm1">
								<div id="hideUpdate" style="display: none;">
									<p style="text-align: center; font-size: large;">
										<strong>회원 아이디를 입력하세요.</strong>
									</p>
									<br> <input type="text" name="user_id" value=""> <input
										type="submit" class="btn" value="확인">
										<form:errors path="user_id"/>
								</div>

							</form>
						</div>
					</div>

					<!-- 권한 박탈 -->
					<div class="form-group">
						<div class="col-sm-4">
							<div class="text-center">
								<input type="button" value="권한 해제" onclick="showUpdate2()"
									style="border: none; background: white; font-size: large;">
							</div>
							<br> <br>

							<form action="update2" name="frm2">
								<div id="hideUpdate2" style="display: none;">
									<p style="text-align: center; font-size: large;">
										<strong>권한 해제 할 회원 아이디를 입력하세요.</strong>
									</p>
									<br> <input type="text" name="user_id" value=""> <input
										type="submit" class="btn" value="확인" >
										<form:errors path="user_id"/>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>

		</c:if>
	</div>

	<script type="text/javascript">
		
	
	
		function showDelete() {
			document.getElementById('hideDelete').style.display = 'inline-block';
		}
		function showUpdate() {
			document.getElementById('hideUpdate').style.display = 'inline-block';
		}
		function showUpdate2() {
			document.getElementById('hideUpdate2').style.display = 'inline-block';
		}

		function validate() {
			var user_id = document.getElementById("user_id");

			if (frm.user_id.value == "") {
				alert("아이디를 입력해 주세요");
				frm.user_id.focus();
				return false;
			}
			return true;
		}

		function validate1() {
			var user_id = document.getElementById("user_id");
			if (frm1.user_id.value == "") {
				alert("아이디를 입력해 주세요");
				frm1.user_id.focus();
				return false;
			}
			return true;
		}

		function validate2() {
			if (frm2.user_id.value == "") {
				alert("아이디를 입력해 주세요");
				frm2.user_id.focus();
				return false;
			}
			return true;
		}
		
		
	</script>

	<br>
	<br>
	<br>
	<br>
	<footer>
		<%@ include file="../footer/footer.jsp"%>
	</footer>
</body>
</html>