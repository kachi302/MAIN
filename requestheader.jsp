<%@page import="java.util.Enumeration"%>
<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title> request Header Test</title>
</head>
<body>
    <h1> header information</h1>
    <table border="1">
        <tr>
        <td> header name </td>
        <td> header value </td>
        </tr>
        <%
            Enumeration ee = request.getHeaderNames();
            while(ee.hasMoreElements())
            {
                String headerName = (String)ee.nextElement();
            
        %>
        <tr>
            <td> <%= headerName %> </td>
            <td> <%= request.getHeader(headerName) %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>