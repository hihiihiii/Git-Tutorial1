<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첫 페이지 이동</title>
</head>
<body>
<%
response.sendRedirect("${pageContext.request.contextPath}/QuestionServlet?command=question_list");
%>
</body>
</html>