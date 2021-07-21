<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header>
<br><br><br><br>
   <p style="text-align: center; font-size: xx-large;"><strong>상품 정보 등록</strong></p><br><br><br>
   <form:form action="step3" commandName="productForm">
      <table style="margin:0 auto;">
         <tr>
            <th>상품명</th>
            <td>
            <label>
            <form:input path="product_name" id="product_name"/>
            </label>
            </td>
         </tr>
         <tr>
            <th>상품가격</th>
            <td>
            <label>
            <form:input path="product_price" id="product_price"/>
            </label>
            </td>
         </tr>
         <tr>
            <th>상품사진</th>
            <td>
            <label>
            <form:input path="product_url" id="product_url"/>
            </label>
            </td>
         </tr>
         <tr>
            <th>상품설명</th>
            <td>
            <label>
            <form:input path="product_description" id="product_description"/>
            </label>
            </td>
         </tr>
      </table>
      <br>
      <div style="text-align: center">
      <input type="submit" value="확인" onclick="return check()">
      </div><br>
   </form:form>
   <div style="text-align: center">
   <a href="<c:url value='/product/step1'/>">
      <input type="button" value="상품목록보기">
   </a>
   </div>
      <footer>
        <%@ include file="../footer/footer.jsp" %>
    </footer>
    
    <script type="text/javascript">
       function check() {
         var name = document.getElementById('product_name');
         var price = document.getElementById('product_price');
         var url = document.getElementById('product_url');
         var description = document.getElementById('product_description');
         
         if(name.value==""){
            alert('상품명을 입력하세요');
            name.focus();
            return false;
         }
         
         if(price.value==""){
            alert('상품가격을 입력하세요');
            price.focus();
            return false;
         }
         if(url.value==""){
            alert('상품사진을 입력하세요');
            url.focus();
            return false;
         }
         
         if(description.value==""){
            alert('상품설명을 입력하세요');
            description.focus();
            return false;
         }
         
         if(isNaN(price.value)){
            alert('상품 가격을 숫자로 입력하세요');
            price.focus();
            return false;
         }
         return true;
      }
    </script>
</body>
</html>