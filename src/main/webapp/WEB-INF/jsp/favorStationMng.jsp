<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

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

		//주유소리스트 조회 페이지
		function gostationList() {

			var sname = document.list.sname.value;
			
			if(sname == "")
			{
				document.list.action = "http://localhost:8080/favor/";
				document.list.submit();		
			}
			else
			{
				document.list.action = "http://localhost:8080/favor/" + sname;
				document.list.submit();
			}			
		}

		
		function goFavor(typeValue) {

		    var checkArr = [];     // 배열 초기화
		    
		    if(typeValue == "1"){ //단골등록

				if (!$('input[name=user_ins_checkbox]').is(":checked")) {
					alert("등록할 단골주유소가 선택되지 않았습니다.");		
				}
		    	
			    $("input[name='user_ins_checkbox']:checked").each(function() {
			        checkArr.push($(this).val());     // 체크된 것만 값을 뽑아서 배열에 push
			    });
		    }else{		//단골삭제
		    	
				if (!$('input[name=user_del_checkbox]').is(":checked")) {
					alert("삭제할 단골주유소가 선택되지 않았습니다.");		
				}
		    
		    	$("input[name='user_del_checkbox']:checked").each(function() {
			        checkArr.push($(this).val());     // 체크된 것만 값을 뽑아서 배열에 push
			    });
		    }

		    $.ajax({
		        url: '/favor'
		        , type: 'post'
		        , dataType: 'text'
		        , data: {
		        	insFavorList: checkArr
		            ,type : typeValue
		        }
			    , success: function(data) {
			    	alert("처리가 완료되었습니다.");
		            location.reload();
			    	//$("#favordiv").load("/favor" + " #favordiv>*", "");   //특정 DIV 만 Reload
			    }
		    });
		}

		
	</script>

	<div id="wrapper">

		<!-- Navigation -->
		<jsp:include page="${contextPath}/WEB-INF/jsp/navigation.jsp" />

		<div id="page-wrapper">

			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">단골주유소 관리</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->

			<div class="row" id="favordiv">

				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading"><B>${loginName}</B>님의 단골주유소</div>
						<div class="panel-body">


							<div class="table-responsive">

								<div align=right>
									<button type="button"
										class="btn btn-outline btn-default btn-sm"
										id="favorDeletetBtn" onclick="javascript:goFavor(2);">단골삭제</button>
								</div>
								<br>
								<table class="table table-striped table-bordered table-hover" id="favor_dataTables">
									<thead>
										<tr role="row">
											<th> no.</th>
											<th> 선택</th>
											<th> 주유소코드</th>
											<th> 주유소명</th>
											<th> 대표자명</th>
											<th> 전화번호</th>
											<th> 주 소</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="myfavorSts" items="${myFavorStsList}"
											varStatus="index">
											<tr>
												<td>${index.count}</td>
												<td>
													<div class="form-group">
														<input type="checkbox" name="user_del_checkbox" value="${myfavorSts.sid}">
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
					</div>
					<!-- /.panel panel-default -->
				</div>

			</div>
			<!-- row -->


			<div class="row" id="stationdiv">

				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">주유/충전소 찾기</div>
						<div class="panel-body">
							<div>

								<form:form method="GET" name="list">
									<br>
									<input type="text" name="sname" placeholder="주유소명"></input>

									<button type="button"
										class="btn btn-outline btn-default btn-sm"
										onclick="javascript:gostationList();">조회</button>
									<br>
								</form:form>


								<form:form method="PUT" name="insertFavor">
									<div align=right>
										<button type="button"
											class="btn btn-outline btn-default btn-sm"
											onclick="javascript:goFavor(1);">단골등록</button>										
									</div>
									<br>
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover" id="station_dataTables">
											<thead>
												<tr role="row">
													<th> no.</th>
													<th> 선택</th>
													<th> 주유소코드</th>
													<th> 주유소명</th>
													<th> 대표자명</th>
													<th> 전화번호</th>
												</tr>

											</thead>
											<tbody>

												<c:forEach var="Stations" items="${stationlist}"
													varStatus="index">
													<tr>
														<td>${index.count}</td>
														<td>
															<div class="form-group">
																<input type="checkbox" name="user_ins_checkbox" value="${Stations.sid}">
															</div>
														</td>
														<td>${Stations.sid}</td>
														<td>${Stations.sname}</td>
														<td>${Stations.sowner}</td>
														<td>${Stations.sphonenumber}</td>
													</tr>
												</c:forEach>
												</form:form>
											</tbody>
										</table>

									</div>
									<!-- /.table-responsive>
								
							</div>
						</div>
					</div>
					<!-- /.panel panel-default> 


				</div>
			</div>
			<!--row-->
							</div>
							<!-- /#page-wrapper -->
						</div>
						<!-- /#wrapper -->
</body>
</html>
