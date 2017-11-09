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

</head>
<body>
<script>

//request message on server
//Calls SimpleServlet to get the "Hello World" message
$( document ).ready(function() {

    //$('#audioplayer').get(0).play();
	 //var text = $(this).data("text"); 
      //alert("click");
	  //var audio = document.getElementById("myAudio");
	  audio.setAttribute('src','/testtts');

});

//utilities
function createXHR(){
	if(typeof XMLHttpRequest != 'undefined'){
		return new XMLHttpRequest();
	}else{
		try{
			return new ActiveXObject('Msxml2.XMLHTTP');
		}catch(e){
			try{
				return new ActiveXObject('Microsoft.XMLHTTP');
			}catch(e){}
		}
	}
	return null;
}
function xhrGet(url, callback, errback){
	var xhr = new createXHR();
	xhr.open("GET", url, true);
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			if(xhr.status == 200){
				callback(xhr.responseText);
			}else{
				errback('service not available');
			}
		}
	};
	xhr.timeout = 3000;
	xhr.ontimeout = errback;
	xhr.send();
}
function parseJson(str){
	return window.JSON ? JSON.parse(str) : eval('(' + str + ')');
}
function prettyJson(str){
	// If browser does not have JSON utilities, just print the raw string value.
	return window.JSON ? JSON.stringify(JSON.parse(str), null, '  ') : str;
}







</script>

<div class="container">
  <h1 id = "message"></h1>
  <button class="btn btn-lg btn-primary btn-block" id="start">goCreate_jasonDataType</button>

  <h2>User REST CRUD Example</h2>
  <p>${message }</p>            
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
	          			<form:form action="/test/${user.id}" method="DELETE">
	              			<input type="submit" value="삭제">
	          			</form:form>
	      			</div>
	      		</td>
	      	</tr>
      	</c:forEach>
    </tbody>
  </table>
</div>


<div class="container">
	<button class="btn btn-lg btn-primary btn-block" id="start">goCreate_jasonDataType</button>
	<!--  <audio source src="/testtts" id="audioplayer" type="audio/wav"  />-->
	

	<audio id="myAudio" autoplay preload="auto" autobuffer controls class="audio" style="display:none;" src="/testtts?message=test parameter" ></audio>

    
    <form:form method="POST"  class="form-signin" action="/test" name ="user">
        <h2 class="form-signin-heading">Create your account</h2>
                <input type="text" name="id" class="form-control" placeholder="id"></input>
                <input type="text"  name="name" class="form-control" placeholder="name" ></input>
                <input type="password" name="password"  class="form-control" placeholder="Password"></input>
                <input type="text" name="email" class="form-control" placeholder="email"></input>
                <input type="text" name="phoneNumber"  class="form-control" placeholder="phoneNumber"></input>
        		<button class="btn btn-lg btn-primary btn-block" type="submit" >Submit</button>
    </form:form>
</div>

<div class="container">
    <form:form method="PUT"  class="form-signin" action="/test" name ="user">
        <h2 class="form-signin-heading">Update your account</h2>
                <input type="text" name="id" class="form-control" placeholder="id"></input>
                <input type="text"  name="name" class="form-control" placeholder="name" ></input>
                <input type="password" name="password"  class="form-control" placeholder="Password"></input>
                <input type="text" name="email" class="form-control" placeholder="email"></input>
                <input type="text" name="phoneNumber"  class="form-control" placeholder="phoneNumber"></input>
        		<button class="btn btn-lg btn-primary btn-block" type="submit" >Submit</button>
    </form:form>
</div>



</body>
</html>
