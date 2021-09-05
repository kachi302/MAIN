<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> bufferOverflow</title>
    </head>
    <body>
        <%@page autoFlush="false" buffer="1kb" errorPage="error.jsp" %>
        <%
            for(int i=1;i<25;i++){
                out.println("남은 출력버퍼의 크기 (out.getRemaining())="+out.getRemaining()+"<br>");
            }
        %>
    </body>
</html>