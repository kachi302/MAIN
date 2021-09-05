<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> loginhandle test </title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String userid = request.getParameter("userid");
            String pwd = request.getParameter("pwd");
            String col = request.getParameter("col");
        %>
        <%
            if(userid.equals("guest")){
                out.println("회원이 아니시군요. 반갑습니다.<br>");
                out.println("회원 가입을 하세요<hr color='red' size='5'>");
            }
            else{
                out.println(userid+"회원님 반갑습니다.<hr color='green' size='5'>");
            }
        %>
        아이디 <%= userid %><br>
        암호 <%= pwd %><br>
        폰번호 <%= col %> 
    </body>

</html>