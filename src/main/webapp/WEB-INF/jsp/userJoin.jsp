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

<script>
		function goCreate_hiddenType() {
		
			var phoneNumber = $("#phoneNumber1 option:selected").val() + '-' + $('#phoneNumber2').val()+ '-' + $('#phoneNumber3').val();
			//var email = $('#phoneNumber1').val() +  $('#phoneNumber2').val()+ $('#phoneNumber2').val();
			//alert(phoneNumber);
			$('#phoneNumber').val(phoneNumber);
			
			var email = $('#email1').val() + '@' +  $("#email2 option:selected").val();
			//alert(email);
			$('#email').val(email);
			//alert(email);
			$("form").submit(function(){
			    alert("회원가입이 완료되었습니다. \n로그인 창으로 이동합니다.");
			});	
		}
</script>

<div id="wrapper">

		<!-- Navigation -->
		<jsp:include page="${contextPath}/WEB-INF/jsp/navigation.jsp" />

		<div id="page-wrapper">

			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">회원 가입</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->


                <div class="col-lg-12">
                	<div class="panel panel-default">
                        <div class="panel-heading"><h3 class="panel-title">가입정보입력</h3></div>
                        
		                		<div class="panel-body"> 
		                		
								   <form:form method="POST" action="/userJoin" name ="user">
								      	<br>
								      	<div class="container">
								                
										    <div class="form-group">		    
										      <label class="control-label col-sm-2" >ID : </label>
										      <div class="col-sm-10">
										        <input type="text" name="id" class="form-control" placeholder="ex)acw0626" style="width:150px;height:70%" ></input>
										      </div>
										    </div>   
										    <br>
										    <div class="form-group">		    
										      <label class="control-label col-sm-2" >이름 : </label>
										      <div class="col-sm-10">
										        <input type="text" name="name" class="form-control" placeholder="ex)홍길동" style="width:150px;height:70%" ></input>
										      </div>
										    </div> 
										    <br>		
										    <div class="form-group">
										      <label class="control-label col-sm-2" for="pwd">Password : </label>
										      <div class="col-sm-10">          
										        <input type="password" name="password" class="form-control" placeholder="Enter password" style="width:150px;height:70%" ></input>
										      </div>
										    </div>	
										    <br>
										    
										      <div class="form-group">
											      <label class="control-label col-sm-2" >핸드폰번호 : </label> <!-- phoneNumber -->
											      <div class="col-sm-10">          
											        	<div class="dropdown"></div>
									                  		    <p style="width:200px">
												                  <select id = "phoneNumber1" name="phoneNumber1" title="번호선택" style="width:55px; height: 26px;font-size: 14px;line-height: 1.42857143;border: 1px solid #ccc;border-radius: 4px">
																		<option value="" selected>선택</option>
																		<option value="010" >010</option>
																		<option value="016">016</option>
																		<option value="017">017</option>
																		<option value="018">018</option>
																		<option value="019">019</option>										
																</select>
															       -
											 				     <input title="text" id="phoneNumber2" name="phoneNumber2" type="text"  maxlength="4" class="text" style="width:55px;height:26px;font-size: 14px;line-height: 1.42857143;border: 1px solid #ccc;border-radius: 4px"> 
															       -
															     <input title="text" id="phoneNumber3" name="phoneNumber3" type="text"  maxlength="4" class="text" style="width:55px;height:26px;font-size: 14px;line-height: 1.42857143;border: 1px solid #ccc;border-radius: 4px">
															     
															     <input type="hidden" id="phoneNumber" name="phoneNumber" ></input>
								             
															   </p>
												  </div>		      
										     </div>		 
										           
										                    
								
										     <div class="form-group">
										      <label class="control-label col-sm-2" >E-mail주소 : </label> <!-- email -->
										      <div class="col-sm-10">          
										        	<div>
															     <p style="width:300px">
													 				     <input title="text" id = "email1" name="email1" type="text"  maxlength="20" class="text" style="width:150px;height:26px;font-size: 14px;line-height: 1.42857143;border: 1px solid #ccc;border-radius: 4px"> 
																	       @
													                  		<select id="email2" name="email2" title="메일주소" style="width:115px;height:26px;font-size: 14px;line-height: 1.42857143;border: 1px solid #ccc;border-radius: 4px">
																				<option value=""selected>선택</option>
																				<option value="naver.com" >naver.com</option>
																				<option value="gmail.com">gmail.com</option>
																				<option value="hanmeil.net">hanmail.net</option>
																			</select>
																			
																			<input type="hidden" id="email" name="email" ></input>
													 	        </p></div>
										      </div>
										     </div>
								
										      <div class="col-sm-offset-2 col-sm-10">
								        		<button type="submit" class="btn btn-warning"  onclick="javascript:goCreate_hiddenType();">가입하기</button>
								        	 </div>
								        	</div>
								    </form:form>

	                    	</div>		
             	 </div> <!-- /.panel panel-default -->
            </div>	 

</div>
</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>



