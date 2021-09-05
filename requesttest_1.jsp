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
                    <td> 이름 </td>
                    <td> <input type="text" name="name"> </td>
                </tr>
                <tr>
                    <td> 성별 </td>
                    <td>남 <input type="radio" name="gender" value="male" checked> 
                        여 <input type="radio" name="gender" value="female">
                    </td> 
                <tr>
                <tr>
                    <td> 취미 </td>
                    <td>
                        <input type="checkbox" name="hobby" value="독서"> 독서
                        <input type="checkbox" name="hobby" value="게임"> 게임
                        <input type="checkbox" name="hobby" value="등산"> 등산
                        <input type="checkbox" name="hobby" value="낚시"> 낚시
                        <input type="checkbox" name="hobby" value="여행"> 여행
                        <input type="checkbox" name="hobby" value="스키"> 스키
                    </td>
                </tr>
                <tr>
                    <td> 가보고 싶은 나라</td>
                    <td>
                        <input type="checkbox" name="country" vlaue="프랑스"> 프랑스
                        <input type="checkbox" name="country" value="일본"> 일본
                        <input type="checkbox" name="country" value="스페인"> 스페인
                        <input type="checkbox" name="country" value="영국"> 영국
                        <input type="checkbox" name="country" value="미국"> 미국
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="전송">
                        <input type="reset" value="다시 입력">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html> 