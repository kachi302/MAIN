<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> request test </title>
    </head>
    <body>
        <h1> request test </h1>
        <form action="requesttest_2.jsp" method="POST">
            <table border="1" width="700">
                <tr>
                    <td> �̸� </td>
                    <td> <input type="text" name="name"> </td>
                </tr>
                <tr>
                    <td> ���� </td>
                    <td>�� <input type="radio" name="gender" value="male" checked> 
                        �� <input type="radio" name="gender" value="female">
                    </td> 
                <tr>
                <tr>
                    <td> ��� </td>
                    <td>
                        <input type="checkbox" name="hobby" value="����"> ����
                        <input type="checkbox" name="hobby" value="����"> ����
                        <input type="checkbox" name="hobby" value="���"> ���
                        <input type="checkbox" name="hobby" value="����"> ����
                        <input type="checkbox" name="hobby" value="����"> ����
                        <input type="checkbox" name="hobby" value="��Ű"> ��Ű
                    </td>
                </tr>
                <tr>
                    <td> ������ ���� ����</td>
                    <td>
                        <input type="checkbox" name="country" vlaue="������"> ������
                        <input type="checkbox" name="country" value="�Ϻ�"> �Ϻ�
                        <input type="checkbox" name="country" value="������"> ������
                        <input type="checkbox" name="country" value="����"> ����
                        <input type="checkbox" name="country" value="�̱�"> �̱�
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="����">
                        <input type="reset" value="�ٽ� �Է�">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html> 