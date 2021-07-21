<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ksks.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/view.css">
    
</head>
<body>
  <%@ include file="../header/header.jsp"%>
 <div class="container">
        <div class="jumboton">
            <h1 class="text-center">문의사항</h1>

        </div>
          <form class="form" method="post" name="frm">
          	<input type="hidden" name="command" value="question_board_write">
           <table class="noticeboard" border="1">
                <tr>
                    <th>제목</th>
                    <td class="title">
                        <span class="noticetitle">${question.qa_title}</span>
                    </td>
                    <th>날짜</th>
                    <td><fmt:formatDate value="${question.qa_date}"/></td>
                </tr>
                <tr>
                    <th class="text_context">내용</th>
                    <td colspan="3">
                        <span class="textbox">${question.qa_content}</span>
                    </td>
                 <tr>
                	<th>문의자</th>
                	<td class="question_id" colspan="3">
                		<span>${question.user_name}</span>
                	</td>
               	</tr>
            </table>
           <c:if test="${!empty authInfo.admin_code }">
            	<input type="button" value="글 삭제하기" onclick="location.href='QuestionServlet?command=question_delete&title=${question.qa_title}'">
            	<input type="button" value="댓글달기" onclick=""> 
            	</c:if>
                <input type="button" value="목록 돌아가기" onclick="location.href='QuestionServlet?command=question_list'">
             </form>
        </div>
             <%@ include file="../footer/footer.jsp"%>
</body>
</html>