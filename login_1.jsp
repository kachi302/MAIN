<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> login 1 jsp </title>
    </head>
    <body>
        <h2> 로그인 TEST </h2>
        <%
            request.setCharacterEncoding("utf-8");
            String userid = request.getParameter("userid");
            String pwd = request.getParameter("pwd");
            String col = request.getParameter("col");
        %>
        <%
            if(userid.equals(""))
            {
            %>
            
                <jsp:include page="loginhandle.jsp">
                    <jsp:param value="guest" name="userid"/>
                    <jsp:param value="anonymous" name="pwd"/>
                    <jsp:param value="010-1111-1111 연락 주세요" name="col"/>
                </jsp:include>
            <%
            }else{
                %>
                <jsp:include page="loginhandle.jsp"/>
            <%    
            }
        %>
    </body>
</html>