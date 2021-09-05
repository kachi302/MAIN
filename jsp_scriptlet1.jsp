<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="euc-kr" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> JSP scriptlet 예제 </title>
    </head>
    <body>
        <% int i = 24; %>
        <% out.println("하루는" + i + "시간이며 <br>");
            out.println("하루는 "+ i*60 +"분입니다.<br>" );
        %>    
       
        <% 
            int sum = 0;
            for(int j = 1; j<=10; j++)
            {
                sum += j;
            }
        %>
        1부터 10까지의 합은 <%= sum %> 입니다.
    </body>

</html>