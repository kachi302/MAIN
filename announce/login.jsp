<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Tontent-Type" content="text/html;charset=UTF-8">
        <!-- View port -->
        <meta name = "viewport" content="width=device-width",inttial-scale="1">
        <!-- styele sheet -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
        <title> 게시판 </title>
    </head>
    <body>
        <!-- 네비게이션 -->
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <button Type="button" class="navbar-toggle collaspsed"
                    data-toogle="collapse" data-target="#bs-example-navbar-collspse-1"
                    aria-expended="fales">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>    
                <a class="navbar-brand" href="main.jsp"> JSP 게시판 </a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="main.jsp"> Main</a> </li>
                    <li><a href="bbs.jsp"> 게시판</a> </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle"
                            data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="fales"> 접속<span class="caret"></span>
                        </a>    
                        <ul class="dropdown-menu">
                            <li class="active"><a href="login.jsp"> 로그인 </a></li>
                            <li><a href="login.jsp"> 회원 가입 </a></li>
                        </ul>
                    </li>    
                </ul>
            </div>
        </nav>
        <!-- login form -->
        <div class="container">
            <div class="col-lg-4"> </div>
            <div class="col-lg-4">
                <div class="jumbotron" style="padding-top:20px">
                    <!-- 로그인 정보 숨기기 -->
                    <form method="post" action="loginAction.jsp">
                        <h3 style="text-align:center">로그인 화면 </h3>
                        <div class="form-group">
                            <input Type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
                        </div>
                        <div class="form-groyp">
                            <input type="password" class="form-control"placeholder="비밀번호" name="userPassword" maxlength="20">
                        </div>
                        <input type="submit" class="btn btn-primary form-control" value="로그인">
                    </form>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>
        <script src="https://code-jquery.com/jquery-3.1.1.main.js"> </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.js"></script>
    </body>

</html>