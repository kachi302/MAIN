<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> request test 2 </title>
    </head>
    <body>
        <% request.setCharacterEncoding("utf-8"); %>
        <h1> request test2 </h1>
        <table border="1" width="500">
            <tr>
                <td> �̸� </td>
                <td> <%= request.getParameter("name") %> </td>
            </tr>
            <tr>
                <td> ���� </td>
                <td> <% if(request.getParameter("gender").equals("male")){ %>
                            ���� 
                        <%}
                        else
                        {%>
                        ����
                        <%
                        } %>
                </td>
            </tr>
            <tr>
                <td> ��� </td>
                <td>
                    <% String[] hobby = request.getParameterValues("hobby");
                        for(int i=0;i<hobby.length;i++)
                        {%>
                        <%=
                            hobby[i]
                        %>
                        <%
                        }
                    %>
                </td>
            </tr>
            <tr>
                <td> ������ ���� ����</td>
                <td>
                    <% String[] country = request.getParameterValues("country");
                         for(int i= 0; i<country.length;i++)
                        {
                    %>
                            <%= country[i] %>
                    <%    
                        }
                    %>
                </td>
            </tr>
        </table>
    </body>
</html>