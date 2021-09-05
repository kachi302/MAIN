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
            sex="남자";
        }
        else{
            sex="여자";
        }
        String country = request.getParameter("country");
    %>
    <h2> 학생정보 입력 결과 </h2>
    성명 : <%= name %> <br>
    학번 : <%= studentNum %><br>
    주소 : <%= address %><br>
    성별 : <%= sex %><br>
    국적 : <%= country %><br>
    </body>
</html>