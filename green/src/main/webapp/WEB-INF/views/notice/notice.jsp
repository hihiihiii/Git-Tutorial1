<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ksks.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/list.css">
</head>

<body>
    <%@ include file="../header/header.jsp"%>
   <div class="container">
        <div class="jumbotron">
            <h1 class="text-center">공지사항</h1>
        </div>
        <div class="top">
        	<h3>공지사항 게시판</h3>
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
                    <th class="writedate">작성일</th>
                </tr>
                <c:forEach var="notice" items="${notice}">
                <tr>
                 <td>${notice.notice_number}</td>
                 <td class="title_con"><a href="NoticeServlet?command=notice_view&title=${notice.notice_title}">${notice.notice_title}</a></td> 
                 <td><fmt:formatDate value="${notice.notice_date}"/></td>
                 </tr>
                 </c:forEach>
            </table>
            <c:if test="${!empty authInfo.admin_code }">
            <a href="NoticeServlet?command=notice_write_form" class="form">
                글쓰기
             </a>
                </c:if>
            <div class="page">
                <ul class="pagintion">
                    <li><a href="#">이전</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">다음</a></li>
                </ul>
            </div>
        </div>
    </div>
    <%@ include file="../footer/footer.jsp"%>
</body>
</html>