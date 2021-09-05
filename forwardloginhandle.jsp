<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <title> forwardloginhandle test </title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("utf-8");
            String userid=request.getParameter("userid");
            String pwd = request.getParameter("pwd");
            String studentnum  = request.getParameter("snum");
        %>
        <%
            if(userid==null ? true : userid.equals("")) {
            %>
            <h2> 로그인 </h2>
            <form method="post" action="forwardlogin.jsp">
                아이디 : <input type="text" name="userid"><br>
                암호   : <input type="text" name="pwd"><br>
                <input type="submit" value="로그인">
                <input type="reset" value="다시입력">
            </form>

            <%
            }else{
            %>
                아이디 : <%= userid %><br>
                암호 : <%= pwd %><br>
                학번 : <%=studentnum %>
                <hr size="5" color="red">
                회원님 반갑습ㄴ다. 즐거운 시간 되세요.

            <%    
            }
        %>
    </body>

</html>