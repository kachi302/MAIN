<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> 서버 정보 출력 </title>
    </head>
    <body>
        서버 정보 : <%= application.getServerInfo() %> <br>
        서블릿 규약 메이저버젼 : <%= application.getMajorVersion() %><br>
        서블릿 규약 마이너버젼 : <%= application.getMinorVersion() %><br>
        <%
            application.log("로그메세지기록");
        %>
        <br>
        <%
            log("log 메세지 기록2");
        %>
    </body>
</html>