<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> includedirective test </title>
    </head>
    <body>
        <% int ii=12; %>
        <% int n = 365; %>
        <% int days = 365; %>
        1년은 <%= ii %> 달 입니다.
        <%-- <%@include file="includesub.jsp"%> --%>
        <jsp:include page="includesub.jsp"/>
        1년은 <%= days %> 일 입니다. <br>
        1년은 <%= n %> 일 입니다.<br>
    </body>

</html>