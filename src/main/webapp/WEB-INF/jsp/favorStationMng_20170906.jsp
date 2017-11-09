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
                    <h1 class="page-header">단골주유소 관리</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>      <!-- /.row -->
            
            <div class="row">
            	<form name="favoriteStation" method="post">
                <div class="col-lg-12">
                	<div class="panel panel-default">
                        <div class="panel-heading"> 나님의 단골주유소 </div>
		                		<div class="panel-body">      
		                            <div class="table-responsive">
		                            
	                            
		                                <table class="table table-striped table-bordered table-hover dataTable no-foote" id="favor_dataTables" aria-describedby="dataTables-example_info">
											    <thead>    
											      <tr role="row">
											        <th tabindex="0" class="sorting" aria-controls="favor_dataTables"  aria-sort="descending" rowspan="1" colspan="1">주유소코드</th>
													<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">주유소명</th>
													<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">대표자명</th>
													<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">전화번호</th>
													<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">주  소</th>
											      </tr>											      
											    </thead>
											    <tbody>
											      	<c:forEach var="myfavorSts" items="${myFavorStsList}" >
													      	<tr>
													      		<td>${myfavorSts.sid}</td>
													      		<td>${myfavorSts.sname}</td>
													      		<td>${myfavorSts.sowner}</td>
													      		<td>${myfavorSts.phonenumber}</td>
													      		<td>${myfavorSts.address}</td>										      		
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
							      			<div class="form-group">
							          			<form:form action="/favor" method="GET">
																    	<br>
																    	<input type="text" name="id" placeholder="주유소명"></input>
																    		<button type="button" class="btn btn-outline btn btn-default btn-sm">조회</button>
																    	
							          			</form:form>
												<form:form action="/favor" method="PUT">
													<div align=right><button type="button" class="btn btn-outline btn-default btn-sm" onclick="">단골등록</button></div>
												</form:form>							          			
							      			</div>			
							      										    
					                            <div class="table-responsive">
					                                <table class="table table-striped table-bordered table-hover dataTable no-foote" id="station_dataTables" aria-describedby="dataTables-example_info">
														    <thead>    
														      <tr role="row">			
														        <th tabindex="0" class="sorting" aria-controls="favor_dataTables"  aria-sort="descending" rowspan="1" colspan="1"> </th>		                            
														        <th tabindex="0" class="sorting" aria-controls="favor_dataTables"  aria-sort="descending" rowspan="1" colspan="1">주유소코드</th>
																<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">주유소명</th>
																<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">대표자명</th>
																<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">전화번호</th>
																<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">단골선택</th>														      
														      </tr>						      
														    </thead>
														    <tbody>
<%-- 														    	<c:forEach var="i" begin="1" end="10"> --%>
<%-- 														    		${i}<br> --%>
<%-- 														    	</c:forEach> --%>
														    	
														      	<c:forEach var="favorSts" items="${favorStsList}" varStatus="index">
																      	<tr>
																      		<td>${index.count}</td>
																      		<td>${favorSts.sid}</td>
																      		<td>${favorSts.sname}</td>
																      		<td>${favorSts.sowner}</td>
																      		<td>${favorSts.phonenumber}</td>
																      		<td>
																      			<div class="form-group">
																              			<input type="checkbox" value="">
																      			</div>
															      			</td>									      		
																      	</tr>		
														      	</c:forEach>
														    </tbody>
					                                </table>
					                            </div>		                            
					                            <!-- /.table-responsive -->											    	
										  
									    

									</div> 	
									
									
		                            										                
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
