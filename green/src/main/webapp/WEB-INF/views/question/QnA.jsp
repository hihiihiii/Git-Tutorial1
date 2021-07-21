<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Hotel</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ksks.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/list.css">
</head>

<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header><br>
  <div class="container">
        <div class="jumbotron">
            <h1 class="text-center">문의사항</h1>
        </div>
        <div class="top">
        	<h3>문의사항 게시판</h3>
        </div>
        <div class="search">
            <div class="search_detail">
               <div class="search_detail_2">
                   <input type="text" >
                   <input type="button" value="검색">
               </div>
            </div>
        </div>
        <div>
            <table border="1" class="table">
                <tr class="tr_table">
                    <th class="num">번호</th>
                    <th class="title">제목</th>
                    <th class="writer">작성자</th>
                    <th class="writedate">작성일</th>
                </tr>
                <c:forEach var="question" items="${question}">
                <tr>
                 <td>${question.qa_number}</td>
                 <td class="title_con"><a href="QuestionServlet?command=question_view&title=${question.qa_title}">${question.qa_title}</a></td> 
                 <td>${question.user_name}</td>
                 <td><fmt:formatDate value="${question.qa_date}"/></td>
                 </tr>
                 </c:forEach>
            </table>
            <div class="page">
                <ul class="pagintion">
                    <li><a href="#">이전</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">다음</a></li>
                </ul>
            </div>
            <c:if test="${!empty authInfo}">
            <c:if test="${empty authInfo.admin_code}">
            <form class="form" action="QuestionServlet" method="POST" name="frm">
            <input type="hidden" name="command" value="question_write_form">
                <input type="submit" value="문의하기">
             </form>
             </c:if>
             </c:if>
        </div>
    </div>
      	<footer>
        <%@ include file="../footer/footer.jsp" %>
    </footer>
</body>
</html>