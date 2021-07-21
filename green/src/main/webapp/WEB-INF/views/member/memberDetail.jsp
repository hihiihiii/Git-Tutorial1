<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
	<p>아이디 : ${Green_member.user_id}</p>
	<p>이메일 : ${Green_member.user_email}</p>
	<p>이름 : ${Green_member.name}</p>
	<p>가입일 : <fmt:formatDate value="${Green_member.user_birthday }" pattern="yyyy-MM-dd-hh:mm"/></p>
	<br>
	<p>
		<a href="<c:url value='/member/list'/>">[날짜별 회원 정보 보기]</a>
	</p>
</body>
</html>