<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> request test </title>
    </head>
    <body>
        <% 
            request.setCharacterEncoding("utf-8");
            String studentNum = request.getParameter("studentNum");
            String[] majors = request.getParameterValues("major");
            String[] habit = request.getParameterValues("habit");
        %>
        <h2> �л� ���� �Է� ��� </h2>
        �й� : <%= studentNum %> <br>
        ���� : <% 
                if(majors == null)
                {
                    out.print("���� ���� !!!");
                }
                else
                {
                    for(String eachmajor:majors){
                        out.print(eachmajor+";");
                    }
                }
                %>
            <br>
        ��� : <%
                if(habit==null){
                    out.print("��� ����!!!");
                }
                else{
                    for(String i:habit){
                        out.print(i+",");
                    }
                }
                %>    
            <br>
        <h2> ��û ���� </h2>
        ��û ��� : <%= request.getMethod() %> <br>
        ��û URL : <%= request.getRequestURL() %> <br>
        ��û URI : <%= request.getRequestURI() %> <br>
        Ŭ���̾�Ʈ �ּ� : <%= request.getRemoteAddr() %> <br>
        Ŭ���̾�Ʈ ȣ��Ʈ : <%= request.getRemoteHost() %> <br>
        �������� ��� : <%= request.getProtocol() %><br>
        ���� �̸� : <%= request.getServerName() %><br>
        ���� ��Ʈ �̸� : <%= request.getServerPort() %><br>        
    </body>
</html>