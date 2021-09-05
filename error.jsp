<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> exception TEST </title>
    </head>
    <body>
        <%@page isErrorPage="true"%>
        <h1> 예외 처리 Page </h1>
        오류 문자열[exception.toString()]: <%= exception.toString() %><br>
        오류 페이지 [Exception.getMessage()] : <%= exception.getMessage() %> <br>
    </body>

</html>