<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> action tag --> main_1.jsp  </title>
    </head>
    <body>
        <h2> include action tag </h2>
        main_1.jsp start <br>
        include tag는 페이지 속성화일 결과를 태그위치에 삽입합니다. <br>
        <hr color="red" size="5">
        <jsp:include page="sub_1.jsp"/>
        <hr color="green" size="5">
        <br>
        main_1.jsp end
     
      
    </body>
</html>