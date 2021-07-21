<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 수정</title>
</head>
<body>
<header>
    <%@ include file="../header/header.jsp" %>
</header><br>
   <p style="text-align: center; font-size: xx-large;"><strong>상품 정보 수정</strong></p><br><br><br>
   <form:form action="${pageContext.request.contextPath}/product/updateComp/${product_number}" commandName="productUpdate">
      <div style="text-align: center">
      <p>
      <label>상품 번호:
      <input type="text" readonly="readonly" value="${product_number}">
      </label>
      </p>
      <p>
      <label>상품명:
      <form:input path="newproduct_name" id="product_name"/>
      <form:errors path="newproduct_name"/>
      </label>
      </p>
      <p>
      <label>상품가격:
      <form:input path="newproduct_price" id="product_price"/>
      <form:errors path="newproduct_price"/>
      </label>
      </p>
      <p>
      <label>상품사진:
      <form:input path="newproduct_url" id="product_url" />
      <form:errors path="newproduct_url"/>
      </label>
      </p>
      <p>
      <label>상품정보:
      <form:input path="newproduct_description" id="product_description"/>
      <form:errors path="newproduct_description"/>
      </label>
      </p>
      <input type="submit" value="확인" onclick="return check()"> 
      </div>
   </form:form>
   <div style="text-align: center">
      <a href='<c:url value='/product/detail/${product_number}'></c:url>'>
      <input type="button" value="돌아가기" >
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