<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> Error 발생 </title>
    </head>
    <body>
        
        요청 처리 과정에서 에러가 발생 했습니다.<br>
        빠른 시간 내에 문제 해결 하도록 하겠습니다.<br>
        <p>
            에러 타입 : <%= exception.getClass().getName() %> <br>
            에러 메세지 :<b> <%= exception.getMessage() %> </b>
        </p>
    </body>
</html>