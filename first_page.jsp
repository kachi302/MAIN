<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page info="JSP page 에 대한 Test 입니다." %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Calendar 클래서 사용하기</title>
    </head>
    <body>
        <%
            Calendar cal = Calendar.getInstance();
        %>
        오늘은
        <%= cal.get(Calendar.YEAR)%> 년
        <%= cal.get(Calendar.MONTH)+1 %> 월
        <%= cal.get(Calendar.DATE) %> 일
        입니다.
    </body>
</html>

