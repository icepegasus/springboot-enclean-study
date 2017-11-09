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
    	<jsp:include page="${contextPath}/WEB-INF/jsp/navigation.jsp" />

        <div id="page-wrapper">      
        
			<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">주유/충전소 찾기</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>      <!-- /.row -->
            
            <div class="row">
            	<form name="favoriteStation" method="post">
                <div class="col-lg-12">
                	<div class="panel panel-default">
                        <div class="panel-heading">단골주유소 list</div>
		                		<div class="panel-body">    
<%-- 		                				<form:form action="/favor/${user.id}" method="GET" name ="user"> --%>
									    <p>[ ${user.name} ] 님의 단골주유소</p>
<%-- 									    </form:form> --%>
								  
		                            <div class="table-responsive">
		                                <table class="table table-striped table-bordered table-hover" id="favor_dataTables">
											    <thead>    
											      <tr>
											        <th>주유소코드</th>
											        <th>주유소명</th>
											        <th>대표자명</th>
											        <th>전화번호</th>
											        <th>주소</th>
											      </tr>
											      
											    </thead>
											    <tbody>
											      	<c:forEach var="favorSts" items="${favorStsList}">
													      	<tr>
													      		<td>${favorSts.sid}</td>
													      		<td>${favorSts.sname}</td>
													      		<td>${favorSts.sowner}</td>
													      		<td>${favorSts.phonenumber}</td>
													      		<td>${favorSts.address}</td>										      		
													      	</tr>		
											      	</c:forEach>
											    </tbody>
		                                </table>
		                            </div>
		                            <!-- /.table-responsive -->		
       
								</div>
             	 </div> <!-- /.panel panel-default -->
            </div>	 
            </form>
           </div> <!-- row -->
             	 
             	 
           <div class="row">
            	<form name="stationSerch" method="post">
                <div class="col-lg-12">
                	<div class="panel panel-default">
                        <div class="panel-heading">주유/충전소 찾기</div>
		                		<div class="panel-body">  		
									<div>
									    <form:form action="/test/${user.id}" method="GET" name ="user">
									    <br>
									    <input type="text" name="id" placeholder="주유소명"></input>
									    <button type="button" class="btn btn-outline btn-default btn-sm">조회</button>
									    </form:form>
									    <button type="button" class="btn btn-outline btn-default btn-sm">단골등록</button>

									</div> 		                		
		                            <div class="table-responsive">
		                                <table class="table table-striped table-bordered table-hover" id="dataTables">
											    <thead>    
											      <tr>
											        <th>주유소명</th>
											        <th>주소</th>
											        <th>대표자명</th>
											        <th>전화번호</th>
											        <th>단골주유소</th>
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
												          			<form:form action="/test/${user.id}" method="GET">
												              			<input type="checkbox" value="">
												          			</form:form>
												      			</div>
												      		</td>
												      	</tr>
											      	</c:forEach>
											    </tbody>
		                                </table>
		                            </div>
		                            <!-- /.table-responsive -->
	                    	</div>		
             	 </div> <!-- /.panel panel-default -->
            </div>	 
            </form>
           </div> <!-- row -->			
			
			 
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
</body>
</html>
