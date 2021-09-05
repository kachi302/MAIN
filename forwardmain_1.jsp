<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> forwardMain_1.jsp </title>
    </head>
    <body>
        <h2> forward action tag </h2>
        forwardMain_1.jsp 파일 시작 부분입니다.<br>
        <hr size="5" color="red">
        forward tag 는 페이지 속성파일로 제어를 넘깁니다. <br>
        forwardMain_1.jsp 페이지의 출력 내용은 하나도 출력되지 않습니다.<br>
        <jsp:forward page="forwardSub.jsp"/>
        forwardMain_1.jsp 파일의 끝부분입니다.<br>
        <hr size="5" color="green">

    </body>

</html>