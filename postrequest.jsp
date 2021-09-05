<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> post 방식의 한글 처리</title>
    </head>
    <body>
        <% request.setCharacterEncoding("utf-8"); %>
        <h2> Method Post 방식에서의 한글 처리 </h2>
         <hr size="5" color ="cyan" >
        한글 이름 : <%= request.getParameter("korname") %> <br>
        영문 이름 : <%= request.getParameter("engname") %> <br>
        
    </body>
</head>