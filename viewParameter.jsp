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
        <title> 요청 파라메타 출력 </title>
    </head>
    <body>
        <b> request.getParameter() 메소드 사용 </b><br>
        name 파라메타 = <%= request.getParameter("name") %> <br>
        address 파라메타 = <%= request.getParameter("address") %> <br>
        <p>
            <b> request.getParameterValues() 메소드 사용 </b><br>
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
            <b> request.getParameterNames() 메소드 사용 </b>
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
            <b> request.getParameterMap() 메소드 사용하기 </b>
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
