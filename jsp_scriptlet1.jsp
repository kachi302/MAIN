<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="euc-kr" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> JSP scriptlet ���� </title>
    </head>
    <body>
        <% int i = 24; %>
        <% out.println("�Ϸ��" + i + "�ð��̸� <br>");
            out.println("�Ϸ�� "+ i*60 +"���Դϴ�.<br>" );
        %>    
       
        <% 
            int sum = 0;
            for(int j = 1; j<=10; j++)
            {
                sum += j;
            }
        %>
        1���� 10������ ���� <%= sum %> �Դϴ�.
    </body>

</html>