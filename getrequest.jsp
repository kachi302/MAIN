<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> get 방식으로 한글 처리</title>
    </head>
    <body>
        <h2> 
            <% request.setCharacterEncoding("utf-8"); %>
            <hr size="5" color ="cyan" >
            한글이름 : <%= request.getParameter("korname") %> <br>
            영문이름 : <%= request.getParameter("engname") %> <br>
             <hr size="5" color ="cyan" >
        </h2>
    </body>
</html>