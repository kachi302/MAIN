<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.net.URL"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> application 기본객체를 사용하여 지원 읽기 </title>
    </head>
    <body>
        <%
            String resourcePath="/js/notice.txt";
        %>
        자원의 실제 경로 <br>
        <%= application.getRealPath(resourcePath) %>
        <br>
        <%= resourcePath %> 의 내용 <br>
        <%
            BufferedReader br = null;
            char[] buff = new char[512];
            int len=-1;
            try{
                /*br=new BufferedReader(
                     new InputStreamReader(
                        application.getResourceAsStream(resourcePath))); */
                    URL url = application.getResource(resourcePath);
                    br = new BufferedReader(new InputStreamReader(url.openStream())); 
                while((len=br.read(buff))!=-1){
                    out.println(new String(buff,0,len));
                }
            }catch(IOException ex){
                out.println("익셉션 발생"+ex.getMessage());
            }finally{
                if(br!=null)try{br.close();}
                catch(IOException ex){}
            }
        %>
    </body>
</html>