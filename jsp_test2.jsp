<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="euc-kr" %>
<%@ page import="java.util.Date" %>
<%-- <%@ page info="page �����ڸ� �ٷ�� ���� test" %> --%>
<% Date now = new Date(); %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> ���� �ð� </title>

    <head>
    <body>
        ����ð��� <%= now %>
        <h2> page ������</h2>
        <%@ page info="page �����ڸ� �ٸ��� page test" %> <br><br>
        <%= this.getServletInfo() %>
    </body>

</html>