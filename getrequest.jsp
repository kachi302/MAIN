<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> get ������� �ѱ� ó��</title>
    </head>
    <body>
        <h2> 
            <% request.setCharacterEncoding("utf-8"); %>
            <hr size="5" color ="cyan" >
            �ѱ��̸� : <%= request.getParameter("korname") %> <br>
            �����̸� : <%= request.getParameter("engname") %> <br>
             <hr size="5" color ="cyan" >
        </h2>
    </body>
</html>