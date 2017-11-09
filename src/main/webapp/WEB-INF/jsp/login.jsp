<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

		<!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0; background: rgb(255, 208, 18)">
            <div class="navbar-header">
            	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/" style="color:#fff" > Cloud EnClean.com </a>
            </div>
            <!-- /.navbar-header -->
        </nav>


    <div class="container">
    	<audio id="myAudio" autoplay preload="auto" autobuffer controls class="audio" style="display:none;" src="/testtts?message=Welcome. Cloud Enclean.com Login Page" ></audio>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
            	<br><br>
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">엔크린 로그인</h3>
                    </div>
                    <div class="panel-body">
                    
                                                              
                    
					    <form role="form" method="POST" action="${contextPath}/login" >
					    
					        <div class="form-group ${error != null ? 'has-error' : ''}">
					            <span>${message}</span>
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="아이디" name="username" type="text" autofocus>
                                </div>		
                                <div class="form-group">
                                    <input class="form-control" placeholder="비밀번호" name="password" type="password" >                                	                                			            
						            <span>${error}</span>
						            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					            </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">아이디 저장하기
                                    </label>
                                </div>					            
					
					            <button class="btn btn-lg btn-warning btn-block" type="submit">로그인</button>					   
					            <h5 class="text-center"><a href="${contextPath}/userJoin" style="color: brown">계정 만들기</a></h5>
					        </fieldset>
					        </div>
							
					    </form>
                  </div>
                </div>
            </div>
        </div>
    </div>
                        
                        

<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
