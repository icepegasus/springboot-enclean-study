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
	                            		<div align=right><button type="button" class="btn btn-outline btn-default btn-sm" id="favorDeletetBtn">단골삭제</button></div><br>
		                                <table class="table table-striped table-bordered table-hover dataTable no-foote" id="favor_dataTables" aria-describedby="dataTables-example_info">
											    <thead>    
											      <tr role="row">
													<th tabindex="0" class="sorting" style="width:80px;" aria-controls="favor_dataTables"  aria-sort="descending" rowspan="1" colspan="1">no.</th>		 
													<th tabindex="0" class="sorting" style="width:80px;" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">선택</th>												      
											        <th tabindex="0" class="sorting" aria-controls="favor_dataTables"  aria-sort="descending" rowspan="1" colspan="1">주유소코드</th>
													<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">주유소명</th>
													<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">대표자명</th>
													<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">전화번호</th>
													<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">주  소</th>
											      </tr>											      
											    </thead>
											    <tbody>
											      	<c:forEach var="myfavorSts" items="${myFavorStsList}" varStatus="index">
													      	<tr>
													      		<td>${index.count}</td>
																<td>
																	<div class="form-group">
																		<input type="checkbox" name="user_del_CheckBox">
																	</div>
																</td>
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
             	 
             	 
<!--            <div class="row"> -->
<%--             	<form name="stationSerch" method="post"> --%>
<!--                 <div class="col-lg-12"> -->
<!--                 	<div class="panel panel-default"> -->
<!--                         <div class="panel-heading">주유/충전소 찾기</div> -->
<!-- 		                		<div class="panel-body">  		 -->
<!-- 									<div>									 -->
<!-- 							      			<div class="form-group"> -->
<%-- 							          			<form:form action="/favor" method="GET"> --%>
<!-- 																    	<br> -->
<!-- 																    	<input type="text" name="id" placeholder="주유소명"></input> -->
<!-- 																    		<button type="button" class="btn btn-outline btn btn-default btn-sm">조회</button> -->
																    	
<%-- 							          			</form:form> --%>
<%-- <%-- 												<form:form action="/favor" method="PUT"> --%> --%>
<!-- <!-- 													<div align=right><button type="button" class="btn btn-outline btn-default btn-sm" id="favorInsertBtn_back">단골등록</button></div> --> -->
<%-- <%-- 												</form:form>							          			 --%> --%>
<!-- 							      			</div>			 -->
							      										    
<!-- 					                            <div class="table-responsive"> -->
<!-- 					                            	<div align=right><button type="button" class="btn btn-outline btn-default btn-sm" id="favorInsertBtn">단골등록</button></div><br> -->
<!-- 					                                <table class="table table-striped table-bordered table-hover dataTable no-foote" id="station_dataTables" aria-describedby="dataTables-example_info"> -->
<!-- 														    <thead>     -->
<!-- 														      <tr role="row">			 -->
<!-- 														        <th tabindex="0" class="sorting" style="width:80px;" aria-controls="favor_dataTables"  aria-sort="descending" rowspan="1" colspan="1">no.</th>		  -->
<!-- 														        <th tabindex="0" class="sorting" style="width:80px;" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">선택</th>	                            -->
<!-- 														        <th tabindex="0" class="sorting" aria-controls="favor_dataTables"  aria-sort="descending" rowspan="1" colspan="1">주유소코드</th> -->
<!-- 																<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">주유소명</th> -->
<!-- 																<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">대표자명</th> -->
<!-- 																<th tabindex="0" class="sorting" aria-controls="favor_dataTables" aria-sort="ascending" rowspan="1" colspan="1">전화번호</th> -->
																													      
<!-- 														      </tr>	 -->
														      					      
<!-- 														    </thead> -->
<!-- 														    <tbody>														    	 -->
<%-- 														      	<c:forEach var="favorSts" items="${favorStsList}" varStatus="index"> --%>
<!-- 																      	<tr> -->
<%-- 																      		<td>${index.count}</td> --%>
<!-- 																      		<td> -->
<!-- 																      			<div class="form-group"> -->
<!-- 																              			<input type="checkbox" name="user_CheckBox"> -->
<!-- 																      			</div> -->
<!-- 															      			</td> -->
<%-- 																      		<td>${favorSts.sid}</td> --%>
<%-- 																      		<td>${favorSts.sname}</td> --%>
<%-- 																      		<td>${favorSts.sowner}</td> --%>
<%-- 																      		<td>${favorSts.phonenumber}</td>																      											      		 --%>
<!-- 																      	</tr>		 -->
<!-- 																	    <div class="col-lg-12" id="ex3_Result1" ></div>  -->
<!-- 																		<div class="col-lg-12" id="ex3_Result2" ></div>																	      	 -->
<%-- 														      	</c:forEach> --%>
													      	
<!-- 														    </tbody> -->
<!-- 					                                </table> -->
					                                					                                
<!-- 					                            </div>		                             -->
<!-- 					                            /.table-responsive		 -->
<!-- 									</div> 								                 -->
<!-- 	                    	</div>		 -->
<!--              	 </div> /.panel panel-default -->
<!--             </div>	  -->
<%--             </form> --%>
<!--            </div> row			 -->
	
	
	<div class="row">
	
		<button type="button" class="btn btn-outline btn-primary pull-right" id="selectBtn">선택</button>
		<table id="example-table-3" width="100%" class="table table-bordered table-hover text-center">
			<thead>
				<tr>
					<th>선택</th>
					<th>No. </th>
					<th>아이디</th>
					<th>이름</th>
					<th>이메일</th>
				</tr>
			</thead>
			<tbody>				
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>1</td>
					<td>user07</td>
					<td>NC소프트</td>
					<td>nc@gmail.com</td>
				
				</tr>
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>2</td>
					<td>user08</td>
					<td>넥슨</td>
					<td>donson@naver.com</td>
					
				</tr>
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>3</td>
					<td>user09</td>
					<td>넷마블</td>
					<td>net@gmail.com</td>
				</tr>
			</tbody>
		</table>
		<div class="col-lg-12" id="ex3_Result1" ></div> 
		<div class="col-lg-12" id="ex3_Result2" ></div> 
	</div>
	
	
			
			 
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->


	<script>					                             		
// 		// 상단 선택버튼 클릭시 체크된 Row의 값을 가져온다.
// 		$("#favorInsertBtn").click(function() {

// 			var rowData = new Array();
// 			var tdArr = new Array();
// 			var checkbox = $("input[name=user_CheckBox]:checked");
			

// 			// 체크된 체크박스 값을 가져온다
// 			checkbox.each(function(i) {
// 				console.log("checkbox" );
// 				// checkbox.parent() : checkbox의 부모는 <td>이다.
// 				// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
// 				var tr = checkbox.parent().parent().eq(i);
// 				var td = tr.children();

// 				// 체크된 row의 모든 값을 배열에 담는다.
// 				rowData.push(tr.text());
				

// 				// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
// 				var no = td.eq(0).text() + ", "
// 				var sid = td.eq(2).text() + ", ";
// 				var sname = td.eq(3).text() + ", ";
// 				var sowner = td.eq(4).text() + ", ";
// 				var phonenumber = td.eq(5).text() + ", ";

// 				// 가져온 값을 배열에 담는다.
// 				tdArr.push(no);
// 				tdArr.push(sid);
// 				tdArr.push(sname);
// 				tdArr.push(sowner);
// 				tdArr.push(phonenumber);

// 				console.log("no : " + no);
// 				console.log("sid : " + sid);
// 				console.log("sname : " + sname);
// 				console.log("sowner : " + sowner);
// 				console.log("phonenumber : " + phonenumber);
// 			});

// 			$("#ex3_Result1").html(" * 체크된 Row의 모든 데이터 = " + rowData);
// 			$("#ex3_Result2").html(tdArr);
// 		});

// 상단 선택버튼 클릭시 체크된 Row의 값을 가져온다.
		$("#selectBtn").click(function(){ 
			
			var rowData = new Array();
			var tdArr = new Array();
			var checkbox = $("input[name=user_CheckBox]:checked");
			
			// 체크된 체크박스 값을 가져온다
			checkbox.each(function(i) {
	
				// checkbox.parent() : checkbox의 부모는 <td>이다.
				// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
				var tr = checkbox.parent().parent().eq(i);
				var td = tr.children();
				
				// 체크된 row의 모든 값을 배열에 담는다.
				rowData.push(tr.text());
				
				// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
				var no = td.eq(1).text()+", "
				var userid = td.eq(2).text()+", ";
				var name = td.eq(3).text()+", ";
				var email = td.eq(4).text()+", ";
				
				// 가져온 값을 배열에 담는다.
				tdArr.push(no);
				tdArr.push(userid);
				tdArr.push(name);
				tdArr.push(email);
				
				//console.log("no : " + no);
				//console.log("userid : " + userid);
				//console.log("name : " + name);
				//console.log("email : " + email);
			});
			
			$("#ex3_Result1").html(" * 체크된 Row의 모든 데이터 = "+rowData);	
			$("#ex3_Result2").html(tdArr);	
		});

	</script>
</body>
</html>
