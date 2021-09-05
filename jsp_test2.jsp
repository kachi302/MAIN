<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="euc-kr" %>
<%@ page import="java.util.Date" %>
<%-- <%@ page info="page 지시자를 다루는 예제 test" %> --%>
<% Date now = new Date(); %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> 현재 시간 </title>

    <head>
    <body>
        현재시간은 <%= now %>
        <h2> page 지시자</h2>
        <%@ page info="page 지시자를 다르는 page test" %> <br><br>
        <%= this.getServletInfo() %>
    </body>

</html>