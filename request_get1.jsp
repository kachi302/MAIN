<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> Get process </title>
    </head>
    <body>
    <%
        request.setCharacterEncoding("utf-8");
    %>
    <%
        String name = request.getParameter("name");
        String studentNum = request.getParameter("studentNum");
        String address = request.getParameter("address");
        String sex = request.getParameter("sex");
        if(sex.equalsIgnoreCase("man")){
            sex="����";
        }
        else{
            sex="����";
        }
        String country = request.getParameter("country");
    %>
    <h2> �л����� �Է� ��� </h2>
    ���� : <%= name %> <br>
    �й� : <%= studentNum %><br>
    �ּ� : <%= address %><br>
    ���� : <%= sex %><br>
    ���� : <%= country %><br>
    </body>
</html>