<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> 헤더 목록 출력 </title>
    </head>
    <body>
        <%
            Enumeration headEnum = request.getHeaderNames();
            while(headEnum.hasMoreElements())
            {
                String headName = (String)headEnum.nextElement();
                String headValue = request.getHeader(headName);
        %>
            <%= headName %> = <%= headValue %><br>
        <%            
            }
        %>

    </body>
</html>