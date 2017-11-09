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

	<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
	<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
	
	<link
		href="${contextPath}/resources/sb-admin2/css/plugins/metisMenu/metisMenu.min.css"
		rel="stylesheet">
	<!-- MetisMenu CSS -->
	<link href="${contextPath}/resources/sb-admin2/css/sb-admin-2.css"
		rel="stylesheet">
	<!-- Custom CSS -->
	<link
		href="${contextPath}/resources/sb-admin2/font-awesome/css/font-awesome.min.css"
		rel="stylesheet" type="text/css">
	<!-- Custom Fonts -->
	
	<script
		src="${contextPath}/resources/sb-admin2/js/plugins/metisMenu/metisMenu.min.js"></script>
	<!-- Metis Menu Plugin JavaScript -->
	<script src="${contextPath}/resources/sb-admin2/js/sb-admin-2.js"></script>
	<!-- Custom Theme JavaScript -->

</head>
<body>
<script>
function userdelete(){
	
	$("form").submit(function(){
	    alert("처리가 완료되었습니다.");
	});	
	
}


</script>
<div id="wrapper">

		<!-- Navigation -->
		<jsp:include page="${contextPath}/WEB-INF/jsp/navigation.jsp" />
		
        <div id="page-wrapper">              
			<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">관리자 페이지</h1>
                </div>   <!-- /.col-lg-12 -->
            </div>      <!-- /.row -->

                <div class="col-lg-12">
                	<div class="panel panel-default">
                        <div class="panel-heading"><h3 class="panel-title">회원관리</h3></div>                        
		                		<div class="panel-body"> 		
		
		
        
			  <table class="table">
			    <thead>
			      <tr>
			        <th>id</th>
			        <th>name</th>
			        <th>phoneNumber</th>
			        <th>email</th>
			        <th>DeleteUser</th>
			      </tr>
			    </thead>
			    <tbody>
			      	<c:forEach var="user" items="${users}">
				      	<tr>
				      		<td>${user.id}</td>
				      		<td>${user.name}</td>
				      		<td>${user.phoneNumber}</td>
				      		<td>${user.email}</td>
				      		<td>
				      			<div class="form-group">
				          			<form:form action="/user/${user.id}" method="DELETE">
				              			<input type="submit" onclick="javascript:userdelete();"value="삭제">
				          			</form:form>
				      			</div>
				      		</td>
				      	</tr>
			      	</c:forEach>
			    </tbody>
			  </table>
			</div>
	</div>
		
</div>
<!-- /#wrapper -->


</div>		
</div>



</body>
</html>
