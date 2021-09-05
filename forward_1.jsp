<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> forward_1.jsp test<title>
    </head>
    <body>
        <% pageContext.forward("send.jsp"); %>
        <%-- <jsp:forward page="send.jsp"/> --%>
        
    </body>
</html>