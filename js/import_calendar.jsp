<%@page import="java.utl.calendar"%>
<%@page language="java" contentType="text/html;charset=UTF-8" pageEndcoding="euc-kr"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <title>calendar Class 사용</title>
</head>
<body>
    <%
    calendar cal = calendar.getinstance();
    %>
    오늘은
    <% = cal.get(calendar.Year) %>년
    <% = cal.get(calendar.month)+1 %> 월
    <% = cal.get(calendar.date) %> 일
    입니다.
</body>
</html>