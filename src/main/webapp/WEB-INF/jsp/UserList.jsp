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


<div class="container">
  <h2>회원 목록</h2>           
  <table class="table">
    <thead>
      <tr>
        <th>id</th>
      </tr>
    </thead>
    <tbody>
      	<c:forEach var="user" items="${users}">
	      	<tr>
	      		<td>${user.id}</td>

	      		<td>
	      			<div class="form-group">
	          			<form:form action="/test/${user.id}" method="GET">
	              			<input type="submit" value="회원상세">
	          			</form:form>
	      			</div>
	      		</td>
	      	</tr>
      	</c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>
