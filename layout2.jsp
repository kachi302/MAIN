<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> Layout2 </title>
    </head>
    <body>
        <table width="400" border="1" cellpadding="0" cellspacing="0">
            <tr >
                <td colspan="2" valign="top">
                    <jsp:include page="top.jsp" flush="false">
                        <jsp:param name="param1" value="value1"/>
                        <jsp:param name="param2" value="value2"/>
                    </jsp:include>
                </td>
            <tr>
            <tr>
                <td width="100" valign="top">
                    <jsp:include page="left.jsp" flush="false"/>
                </td>
                <td width="300" valign="top">
                    이부분은 layout2.jsp 가 생성됩니다.
                    레이아웃2
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <jsp:include page="bottom.jsp" flush="false" />
                </td>
            </tr>
        </table>
    </body>
</html>