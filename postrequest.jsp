<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> post ����� �ѱ� ó��</title>
    </head>
    <body>
        <% request.setCharacterEncoding("utf-8"); %>
        <h2> Method Post ��Ŀ����� �ѱ� ó�� </h2>
         <hr size="5" color ="cyan" >
        �ѱ� �̸� : <%= request.getParameter("korname") %> <br>
        ���� �̸� : <%= request.getParameter("engname") %> <br>
        
    </body>
</head>