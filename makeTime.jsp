<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<%
    Calendar cal = Calendar.getInstance();
    request.setAttribute("time",cal);
%>
<jsp:forward page="viewTime.jsp"/>