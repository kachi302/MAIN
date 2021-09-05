<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> JSP TEST sendRedirect</title>
        <!--  HTML 주석 처리 -->
    </head>
    <body>
        <%-- JSP 주석 --%>
        <%
            
            /* java 주석 */
            
            if(request.getParameterNames().equals("word")){
                String URL="http://search.naver.com/search.naver?where=nexearh";
                String keyword = request.getParameter("word");
                 URL += "&" + "query=" + keyword;
                response.sendRedirect(URL);
            }
            else if(request.getParameterNames().nextElement().equals("word2")){
                String URL = "https://www.google.co.kr/?gfe_rd=cr&ei=RLR9V7XzFfD98wej0IuIBA&gws_rd=ssl#q=";
                String keyword = request.getParameter("word2");
                URL += keyword;
                response.sendRedirect(URL);
            }
            else if(request.getParameterNames().nextElement().equals("word3")){
                String URL = "http://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&q=";
                 String keyword = request.getParameter("word3");
                URL += keyword;
                response.sendRedirect(URL);
            }
            else if(request.getParameterNames().nextElement().equals("word4")){
                String URL = "http://search.daum.net/nate?nil_suggest=btn&w=tot&DA=SBCO&q=";
                String keyword = request.getParameter("word4");
                URL += keyword+"&tltm=ee24";
                response.sendRedirect(URL);
            }
        %>
    </body>
</html>