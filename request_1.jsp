<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> request test </title>
    </head>
    <body>
        <% 
            request.setCharacterEncoding("utf-8");
            String studentNum = request.getParameter("studentNum");
            String[] majors = request.getParameterValues("major");
            String[] habit = request.getParameterValues("habit");
        %>
        <h2> 학생 정보 입력 결과 </h2>
        학번 : <%= studentNum %> <br>
        전공 : <% 
                if(majors == null)
                {
                    out.print("전공 없음 !!!");
                }
                else
                {
                    for(String eachmajor:majors){
                        out.print(eachmajor+";");
                    }
                }
                %>
            <br>
        취미 : <%
                if(habit==null){
                    out.print("취미 없음!!!");
                }
                else{
                    for(String i:habit){
                        out.print(i+",");
                    }
                }
                %>    
            <br>
        <h2> 요청 정보 </h2>
        요청 방식 : <%= request.getMethod() %> <br>
        요청 URL : <%= request.getRequestURL() %> <br>
        요청 URI : <%= request.getRequestURI() %> <br>
        클라이언트 주소 : <%= request.getRemoteAddr() %> <br>
        클라이언트 호스트 : <%= request.getRemoteHost() %> <br>
        프로토콜 방식 : <%= request.getProtocol() %><br>
        서버 이름 : <%= request.getServerName() %><br>
        서버 포트 이름 : <%= request.getServerPort() %><br>        
    </body>
</html>