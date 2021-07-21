<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ksks.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/notice.js"></script>
    
</head>
<body>
  <%@ include file="../header/header.jsp"%>
    <div class="container">
        <div class="jumbotron">
            <h1 class="text-center">공지사항</h1>

        </div>
        <form action="NoticeServlet" name="frm">
     	<input type="hidden" name="command" value="notice_write">
           <table class="noticeboard" border="1">
                <tr class="tr_table">
                    <th>*구분</th>
                    <td>
                        <input type="radio" value="sroom" name="select" id="select">객실
                        <input type="radio" value="food" name="select" id="select">음식
                        <input type="radio" value="service" name="select" id="select">서비스
                        <input type="radio" value="etc" name="select" id="select">기타
                    </td>
                </tr>
                <tr>
                    <th>*제목</th>
                    <td>
                        <input type="text" name="notice_title" id="notice_title" class="notice_title">
                    </td>
                </tr>
                <tr>
                    <th>*내용</th>
                    <td>
                        <textarea class="textbox" name="notice_content" id="notice_content" class="notice_title"></textarea>
                    </td>
                </tr>
            </table>
                <input type="submit" value="글쓰기" onclick="return noticeCheck()">
                <input type="reset" value="다시 작성">
                <input type="button" value="목록 돌아가기" onclick="location.href='NoticeServlet?command=notice_list'">
            </form>
        </div>
     <%@ include file="../footer/footer.jsp"%>
</body>
</html>