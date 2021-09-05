<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
    request.setCharacterEncoding("utf-8");
%>

<html>
    <head>
        <meta charset="UTF-8">
        <title> ��û �Ķ��Ÿ ��� </title>
    </head>
    <body>
        <b> request.getParameter() �޼ҵ� ��� </b><br>
        name �Ķ��Ÿ = <%= request.getParameter("name") %> <br>
        address �Ķ��Ÿ = <%= request.getParameter("address") %> <br>
        <p>
            <b> request.getParameterValues() �޼ҵ� ��� </b><br>
            <%
                String[] values = request.getParameterValues("pet");
                if(values != null)
                {
                    for(int i=0;i<values.length;i++)
                    {
            %>
                        <%= values[i] %>
            <%
                    }
                }
            %>
        </p>
        <p>
            <b> request.getParameterNames() �޼ҵ� ��� </b>
            <%
                Enumeration ParamEnum = request.getParameterNames();
                while(ParamEnum.hasMoreElements())
                {
                    String name = (String)ParamEnum.nextElement();
            %>
                    <%= name %>
            <%
                }
            %> 
            
        </p>
        <p>
            <b> request.getParameterMap() �޼ҵ� ����ϱ� </b>
            <%
                Map parameterMap = request.getParameterMap();
                String[] nameParam = (String[]) parameterMap.get("name");
                if(nameParam != null)
                {
            %>
                    name = <%= nameParam[0] %>
            <%        
                }
            %>
        </p>       

    </body>

</html>
