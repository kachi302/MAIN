<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" >
        <title> �� ���� </title>
    </head>
    <body>
        ���� �����͸� �Է����� "����"������ �����ϼ���.<br>
        <form action="viewParameter.jsp" method="post">
            �̸� : <input type="text" name="name" size="10"> <br>
            �ּ� : <input type="text" name="address" size="30"><br>
            ���� �ϴ� ���� :
                <input type="checkbox" name="pet" value="������"> ������
                <input type="checkbox" name="pet" value="�����">�����
                <input type="checkbox" name="pet" value="�۾���"> �۾���    
                <br>
            <input type="submit" value="����">    
            </form>
    </body>
</html>