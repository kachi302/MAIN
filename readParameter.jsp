<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@page errorPage="viewErrorMessage.jsp"%>
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> 파라메타 출력 </title>
    </head>
    <body>
        name 파라메타 값 <%= request.getParameter("name")%>
    </body>
</html>