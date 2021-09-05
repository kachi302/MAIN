<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    /* korea character   */
    request.setCharacterEncoding("UTF-8");

    /* db connection */
    String user="eao";
    String pw = "eao";
    /* Class.forName("oracle.jdbc.OracleDriver"); */
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=vw017352.nov.com)(PORT=1522))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=devcust)))";
    String sql="";
    /*conn = DriverManager.getConnection (url,"eao","eao");  */
    Connection conn = DriverManager.getConnection(url,user,pw);
    ResultSet res;

    /* insert ,update, delete execution */
    String action = request.getParameter("action");
    if(action != null){
        String writer = request.getParameter("writer");
        String content = request.getParameter("content");
        String idx = request.getParameter("idx");
        switch (action){
            case "insert":
                sql="select idx from comment_list where rownum<=1 order by idx desc";
                res = conn.prepareStatement(sql).executeQuery();
                int lastid = 1;
                if(res.next()){
                    lastid = res.getInt("idx")+1;
                }
                sql = String.format("insert into comment_list values (%s,'%s','%s',sysdate)",lastid,writer,content);
                break;
            case "update":
                sql=String.format("update comment_list set writer = '%s',content='%s' where idx = %s",writer,content,idx);
                break;
            case "delete":
                sql=String.format("delete from comment_list where idx=%s",idx);
                break;        
        }
        System.out.println(sql);
        conn.prepareStatement(sql).executeUpdate();
    }
%>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
        <title> Announencement page </title>
    </head>
    <body>
        <%  /* SELECT LIST  */
            sql="select * from comment_list";
            res = conn.prepareStatement(sql).executeQuery();
            int idx;
            String writer,content,date,list = "";
            while(res.next()){
                idx = res.getInt("idx");
                writer = res.getString("writer");
                content = res.getString("content");
                date = res.getString("reg_date");
                System.out.println(idx);
                System.out.println(writer);
                System.out.println(content);
                System.out.println(date);
                list += String.format("<p>%s / %s / %s /%s <p>",idx,writer,content,date);
            }
        %>
        <form action="" method="post">
            <fieldset><legend>add</legend>
                <input type="hidden" name="action" value="insert"/>
                <input type="text" name="idx" placeholder="No" size="5">
                <input type="text" name="writer" placeholder="writer" size="10">
                <input type="text" name="content" placeholder="content" size="80">
                <button type="submit">Send</button>
            </fieldset>
        </form>
        <form action="" method="post">
            <fieldset><legend> update </legend>
            <input type="hidden" name="action" value="update"/>
            <input type="text" name="idx" placeholder="No" size="5">
                <input type="text" name="writer" placeholder="writer" size="10">
                <input type="text" name="content" placeholder="content" size="80">
                <button type="submit">Send</button>
                </fieldset>
        </form>
        <form action="" method="post">
            <fieldset><legend> delete </legend>
            <input type="hidden" name="action" value="delete"/>
            <input type="text" name="idx" placeholder="No" size="5">             
            <button type="submit">Send</button>
            </fieldset>
        </form>

    </body>
</html>

