<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>info </title>
    </head>
    <body>
        body_sub 에서 name 파라메타 값 : <%= request.getParameter("name")%>
        <br>
        name 파라메타 값 목록:
        <%
            String[] names = request.getParameterValues("name");
            for(String name : names){
        %>
            <li> <%=name%> </li>
        <%}%>
    </body>
</html>