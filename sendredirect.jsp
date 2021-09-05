<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta content="charset=UTF-8">
        <title> JSP Test sendRedirect </title>
        <%
            request.setCharacterEncoding("UTF-8");
        %>
    </head>

    <body>
        <% String keyword = request.getParameter("word");
            String engine= request.getParameter("engine");

            String URL="";
            switch(engine){
                case "naver":
                    URL = "http://search.naver.com/search.naver?where=nexearch&query=";
                    break;
                case "google":
                    URL = "https://www.google.co.kr/#q=";
                    break;
                case "nate":
                    URL = "http://search.daum.net/nate?thr=sbma&w=tot&q=";       
            }
            URL += keyword;
            response.sendRedirect(URL);
        %>    
    </body>
</html>