<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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

    <title>Create an account !!!!!</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<script>

		//hidden type 이용 User 객체 넘기기
		function goCreate_hiddenType() {

			var phoneNumber = $('#phoneNumber1').val() +  $('#phoneNumber2').val()+ $('#phoneNumber2').val();
			//var email = $('#phoneNumber1').val() +  $('#phoneNumber2').val()+ $('#phoneNumber2').val();
			
			$('#phoneNumber').val(phoneNumber);
			
			document.user.submit();		
		}
		
		//json 객체로 넘기기(jquery post 사용)
		function goCreate_jasonDataType() {

			var id = $('#id').val();
			var name = $('#name').val();
			var password = $('#password').val();
			var email = $('#email').val();
			var phoneNumber = $('#phoneNumber1').val() +  $('#phoneNumber2').val();
			//alert(phoneNumberVal);
			
			var  data = { 	id: id, 
							name: name,
							password:password,
							email : email,
							phoneNumber : phoneNumber
							
		    };
			
			//$.post( "/registration", JSON.stringify(data) );

		
			$.ajax({
				
		        url: "/registration",
		        type: "POST",
		        data: JSON.stringify(data),
		        contentType: "application/json; charset=utf-8",
		        
			    
		    });
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
		            location.reload();
			    	//$("#favordiv").load("/favor" + " #favordiv>*", "");   //특정 DIV 만 Reload
			    }
		    });
		}

		
	</script>

<div class="container">

   <form:form method="POST"  class="form-signin"  name ="user">
        <h2 class="form-signin-heading">Create your account</h2>
                <input type="text" id="id" class="form-control" placeholder="id"></input>
                <input type="text"  id="name" class="form-control" placeholder="name" ></input>
                <input type="password" id="password"  class="form-control" placeholder="Password"></input>
                <input type="text" id="email" class="form-control" placeholder="email"></input>
                <input type="hidden" id="phoneNumber" name="phoneNumber" ></input>
                <input type="text" id="phoneNumber1"  class="form-control" placeholder="phoneNumber1"></input>
                <input type="text" id="phoneNumber2"  class="form-control" placeholder="phoneNumber2"></input>
        		<button class="btn btn-lg btn-primary btn-block" onclick="javascript:goCreate_hiddenType();">goCreate_hiddentype</button>
        		<button class="btn btn-lg btn-primary btn-block" onclick="javascript:goCreate_jasonDataType();">goCreate_jasonDataType</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>

