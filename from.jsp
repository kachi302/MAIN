<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%-- <jsp:forward> 액션 태그를 실행하면 생성했던 출력결과는모드 제거 됩니다. --%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"%>
        <title> from.jsp</title>
    </head>
    <body>
        이페이지는 from.jsp 가 생성한 것입니다.<br>

        <jsp:forward page="to.jsp"/>
    </body>
</html>