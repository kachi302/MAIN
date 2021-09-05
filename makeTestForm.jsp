<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" >
        <title> 폼 생성 </title>
    </head>
    <body>
        폼에 데이터를 입력한후 "전송"버턴을 생성하세요.<br>
        <form action="viewParameter.jsp" method="post">
            이름 : <input type="text" name="name" size="10"> <br>
            주소 : <input type="text" name="address" size="30"><br>
            좋아 하는 동물 :
                <input type="checkbox" name="pet" value="강아지"> 강아지
                <input type="checkbox" name="pet" value="고양이">고양이
                <input type="checkbox" name="pet" value="송아지"> 송아지    
                <br>
            <input type="submit" value="전송">    
            </form>
    </body>
</html>