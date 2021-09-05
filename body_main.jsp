<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> info </title>
    </head>
    <body>
        include 전 name 파라메타 값 : <%= request.getParameter("name")%>
        <hr>
        <jsp:include page="body_sub.jsp" flush="false">
            <jsp:param name="name" value="홍길동"/>
        </jsp:include>
        <hr>
        include 후 name 파라메타 값 : <%= request.getParameter("name")%>    
    <body>
</html>