<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> request post method </title>
    </head>
    <body>
    <%@ page import="java.util.Enumeration" %>
    <% request.setCharacterEncoding("utf-8"); %>
    <h2> 취미와 가보고 싶은 나라 </h2>
    <%
        Enumeration<String> e = request.getParameterNames();
        while(e.hasMoreElements())
        {
            String name = e.nextElement();
            String[] data = request.getParameterValues(name);
            if(data != null)
            {
                for(String eachData:data)
                {
                    out.println(eachData+";");
                }
                out.println("<br>");
            }
        }
    %>
    </body>
</html>