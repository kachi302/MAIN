<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <%@page autoFlush="true" buffer="1kb" errorPage="error.jsp" %>
        <h2> 현재 autoFlush= <%= out.isAutoFlush() %> </h2>

        <%
            for(int i=1;i<25;i++){
                out.println("남은 출력버퍼의 크기(out.getRemaining())=" + out.getRemaining() +"<br>");
                if(out.getRemaining()<=50){
                    out.println("<br>");
                    out.flush();
                }
            }
        %>
        <hr size="5" color="red">
        초기 출력버퍼의 크기 : <%= out.getBufferSize() %> byte <br>
        남은 출력 버퍼의 크기 : <%= out.getRemaining() %> byte <br>
    </body>

</html>