<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>�հ� ���ϱ�</title>
    </head>
    <body>
        <%
            int sum = 0;
            for (int i=1;i<=10;i++)
            {
                sum += i;
            }
        %>
        1���� 10������ ���� <%= sum %> �Դϴ�.
        <br>
        <br>
        <%
            int sum1 = 0;
            for(int i=11;i<=20;i++) 
            {
                sum1 += i;
            }
        %>
        11���� 20������ ���� <%= sum1 %> �Դϴ�.<br>
        <%! 
           public int muiti(int a,int b)
           {
               int c = a * b;
               return c;
           } 
        %>
        <%
            for(int b=1;b<=9;b++)
            {
                out.println("<b>������ "+ b +" </b><br>");
                for(int a=1; a<=10;a++)
                {                
                out.println(a +" * ");
                out.println(b+" = ");
                out.println(muiti(a,b));
                out.println("<br>");
                }
            }
           
        %>

    </body>
</html>