<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> main </title>
    </head>
    <body>
        <h2> main.jsp 에서 생성한 내용 </h2>
        <jsp:include page="sub.jsp" flush="false"/>
        include 이후의 내용
    </body>
</html>