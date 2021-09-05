<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> forwardlogin test </title>
    </head>
    <body>
        <h2> forward 태그를 이용한 로그인 테스트 </h2>
        <%
            request.setCharacterEncoding("utf-8");
            String userid = request.getParameter("userid");
            String pwd = request.getParameter("pwd");
            
        %>
        <% 
            if(userid== null && pwd== null){
            %>
            <jsp:forward page="forwardloginhandle.jsp"/>
            <%                
            }else{
                %>
                <jsp:forward page="forwardloginhandle.jsp">
                    <jsp:param value="2021-07-12" name="snum"/>
                </jsp:forward>
            <%    
            }
        %>
    </body>
</html>