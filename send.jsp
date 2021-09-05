<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>  
        <meta charset="UTF-8">
        <title> send.jsp test</title>
    </head>
    <body>
        <%
            response.sendRedirect("http://"+request.getParameter("url"));
        %>
    </body>
</html>