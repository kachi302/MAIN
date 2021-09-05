<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Calendar class 사용하기</title>
    </head>
    <body>
        <% java.util.Calendar cal = java.util.Calendar.getInstance(); %>
        오늘은
        <%= cal.get(java.util.Calendar.YEAR) %> 년
        <%= cal.get(java.util.Calendar.MONTH)+1 %> 월
        <%= cal.get(java.util.Calendar.DATE) %> 일
        입니다.

    </body>


</html>