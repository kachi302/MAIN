<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> Expression Test </title>
    </head>
    <body>
        <% int year=365; %>
        <% out.println("1���� �� �����ϱ��?");%>
        <% out.println((year/7)+"�� �Դϴ�.<p>");%>
        <%= year/7 %>
        <%= "���Դϴ�." %>
        <br>
        <br>
        1���� 10������ ����
        <%= 1+2+3+4+5+6+7+8+9+10 %>
        �Դϴ�.
    </body>

</html>