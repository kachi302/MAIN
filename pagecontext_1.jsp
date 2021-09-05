<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> pageContext test</title>
    </head>
    <body>
        <h2> pageContext</h2>
        <%pageContext.getOut().println("include.html을 추가");%><br>
        <%out.println("include.html 222을 추가");%><br>

        <hr size="5" color="green">
        <%pageContext.include("include.html");%>
        <hr size="5" color="red">

    </body>
</html>