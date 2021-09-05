<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> Expression Test </title>
    </head>
    <body>
        <% int year=365; %>
        <% out.println("1년은 약 몇주일까요?");%>
        <% out.println((year/7)+"주 입니다.<p>");%>
        <%= year/7 %>
        <%= "주입니다." %>
        <br>
        <br>
        1부터 10까지의 합은
        <%= 1+2+3+4+5+6+7+8+9+10 %>
        입니다.
    </body>

</html>