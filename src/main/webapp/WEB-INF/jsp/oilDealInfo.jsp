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
    
    <link href="${contextPath}/resources/css/bootstrap.min.css"rel="stylesheet">
  <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

 

    <!-- MetisMenu CSS -->
    <link href="${contextPath}/resources/sb-admin2/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="${contextPath}/resources/sb-admin2/css/plugins/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${contextPath}/resources/sb-admin2/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="${contextPath}/resources/sb-admin2/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${contextPath}/resources/sb-admin2/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <script type="text/javascript">
    
  //리스트 조회 페이지
  
    //리스트 조회 페이지
	function goList(){
	
		
	
	}


    </script>
    

     
    
</head>
<body>
    <div id="wrapper" >
    
    	<!-- Navigation -->
    	<jsp:include page="${contextPath}/WEB-INF/jsp/navigation.jsp" />

        <div id="page-wrapper" >      
        
			<div class="row" >
             
                    <h1 class="page-header">주유실적조회</h1>
              
                <!-- /.col-lg-12 -->
            </div>      <!-- /.row -->
            
           
             	 
           <div class="row">
            
                	<div class="panel panel-default">
                        <div class="panel-heading">2017년 주유실적</div>
		                		<div class="panel-body">  		
									<div>
									    <form:form  method="GET" name ="fuelRecord">
									    <br>
									    	<label for="dt">일자: </label>
	 										<input id="dtstart" name="dtstart" type="date" min="2017-01" max="2017-12" value="2017-01-01"/>
									    	<label> ~ </label>
									    	<input id="dtend" name="dtend" type="date" min="2017-01" max="2017-12" value="2017-10-31"/>
									    	 
									    
									    <button type="button" class="btn btn-outline btn-default btn-sm" onclick="" >조회</button>
									    </form:form>
									    

									</div> 		                		
		                            <div class="table-responsive" id="oilDealDiv">
		                                <table class="table table-striped table-bordered table-hover" id="dataTables">
											    <thead>    
											      <tr>
		                                            <th>일자</th>
		                                            <th>주유소명</th>
		                                            <th>주유금액</th>
		                                            <th>누적포인트</th>
											      </tr>
											    </thead>
												<tbody>
			                                      <c:forEach var="fuelrecord" items="${fuelRecordList}">
													      	<tr>
													      		
													      		<td>${fuelrecord.fueldate }</td>
													      		<td>${fuelrecord.station }</td>
													      		<td>${fuelrecord.payment }</td>
													      		<td>${fuelrecord.totalpoint }</td>		
													      										      		
													      	</tr>		
											      	</c:forEach>
			                                      
			                                    </tbody>
		                                </table>
		                            </div>
		                            <!-- /.table-responsive -->
	                    	</div>		
             	 </div> <!-- /.panel panel-default -->
        
            </div>
            <!-- /.row -->
            <div class="row">
                
             
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            월 평균 주유실적 비교 차트
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<div id="line-chart"></div>
                        	<div id="area-chart" style="display:none;"></div>
                            <div id="bar-chart" style="display:none;"></div>
                            <div id="pie-chart" style="display:none;"></div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
          
              
            </div>
            <!-- /.row -->
			
			 
       
        <!-- /#page-wrapper -->
    </div>
 			

 
    <!-- /#wrapper -->
    </div>
   
    
<script src="${contextPath}/resources/sb-admin2/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${contextPath}/resources/sb-admin2/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${contextPath}/resources/sb-admin2/js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="${contextPath}/resources/sb-admin2/js/plugins/morris/raphael.min.js"></script>
    <script src="${contextPath}/resources/sb-admin2/js/plugins/morris/morris.min.js"></script>
    <script src="${contextPath}/resources/sb-admin2/js/plugins/morris/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${contextPath}/resources/sb-admin2/js/sb-admin-2.js"></script>
    
    
    
</body>
</html>
