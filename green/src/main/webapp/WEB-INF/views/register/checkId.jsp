<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 중복확인</title>
    <script src="js/ksks.js"></script>
    <style>
    #wrap{
        width:971px;
        margin:0;
        margin-left:auto;
        margin-right:auto;
    }
    h1{
        color : green;
    }
    table{
        width: 100%;
        border-collapse:collapse;
        font-size:12px;
        line-height:24px;
    }
    table td, th{
        border: #d3d3d3 solid 1px;
        padding:5px;
    }

    th{
        background:yellowgreen;
    }

    img{
        width:200px;
        height:300px;
    }

    a{
        text-decoration : none;
        color : black;
    }

    a:hover{
        text-decoration : underline;
        color : green;
    }
    .btnChk
    {   width: 100%;
        height: 34px;
        padding: 6px 12px;
        font-size: 14px;
        line-height: 1.42857143;
        background-color: antiquewhite;
        border-radius: 5px;
        border-style: none;
    }
    </style>

</head>
<body>
    <body>
        <div align="center">
            <form:form commandName="formData">
            <h1>아이디 확인</h1>
                <br>
                <form:errors path="user_id"></form:errors>
                <input type="button" value="확인" onclick="window.close()">
                
                <br>
                
           </form:form>
            <!--${message}-->
        </div>
    </body>
</body>
</html>