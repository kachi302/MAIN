<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<%! 
    public int multiply(int a,int b)
    {
        int c = a*b;
        return c;
    }
%>
<%!
    public int add(int a,int b)
    {
        int c = a +b;
        return c;
    }
    public int sub(int a,int b)
    {
        int c  = a - b;
        return c;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Declaration(선언부) test</title>
    </head>
    <body>
        <%! double radius = 4.8; %>
        <%! 
            public double getArea(double kbs)
            {
                return kbs*kbs*3.14;
            }
        %>
        <%!
            public double getRound(double mbc)
            {
                return (mbc+mbc)*3.14;
            } 
        %>
        반지름이 <%= radius %> 인 원의 면적은 <%= getArea(radius) %> 입니다. <br>
        반지름이 <%= radius %> 인 원의 둘레는 <%= getRound(radius) %> 입니다. <br>
        10 * 25 = <%= multiply(10,25) %><br>

        <%
            int value1=3;
            int value2=9;

            int addresult = add(value1,value2);
            int subresult = sub(value1,value2);
        %>
        <%= value1 %> + <%= value2 %> = <%= addresult %><br>
        <%= value1 %> - <%= value2 %> = <%= subresult %><br>
    </body>

</html>