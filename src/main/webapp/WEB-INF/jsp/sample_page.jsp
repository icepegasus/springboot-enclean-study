<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

	<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

    <link href="${contextPath}/resources/sb-admin2/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet"><!-- MetisMenu CSS -->
    <link href="${contextPath}/resources/sb-admin2/css/sb-admin-2.css" rel="stylesheet"><!-- Custom CSS -->
    <link href="${contextPath}/resources/sb-admin2/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"><!-- Custom Fonts -->

    <script src="${contextPath}/resources/sb-admin2/js/plugins/metisMenu/metisMenu.min.js"></script><!-- Metis Menu Plugin JavaScript -->
    <script src="${contextPath}/resources/sb-admin2/js/sb-admin-2.js"></script><!-- Custom Theme JavaScript -->
    
    
</head>
<body>
    <div id="wrapper">
    
    	<!-- Navigation -->
    	<jsp:include page="${contextPath}/navigation.jsp" />

        <div id="page-wrapper">              
			<div class="row">
                <div class="col-lg-10">
                    <h1 class="page-header">*** 메뉴이름 쓰기 ***</h1>
                </div>   <!-- /.col-lg-12 -->
            </div>      <!-- /.row -->
<!--  개발영역 start (요 영역에 코딩하시면 됨)-->     

		<!-- contents 패널안에 넣기 -->
					<div class="panel panel-default">
	                        <div class="panel-heading">*** 패널이름 쓰기 패널1****</div>
			                		<div class="panel-body">    
										    <p>요기에 contents 채우기</p>
	       
									</div>
	             	 </div> <!-- /.panel panel-default -->
	             	 
					<div class="panel panel-default">
	                        <div class="panel-heading">*** 패널이름 쓰기 패널2****</div>
			                		<div class="panel-body">    
										    <p>요기에 contents 채우기</p>	
	       
									</div>
	             	 </div> <!-- /.panel panel-default -->	             	 


<!--  개발영역 end -->     		 
        </div>  <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
</body>
</html>
