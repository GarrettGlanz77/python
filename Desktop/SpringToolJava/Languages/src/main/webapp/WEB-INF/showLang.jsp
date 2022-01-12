<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coding Language</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	
	<section>
		<div class="container">
  			<div class="notification">
    			Languages assignment.
  			</div>
  			<h1><c:out value="${lang.name}"/></h1>
			<h1><c:out value="${lang.creator}"/></h1>
			<h1><c:out value="${lang.version}"/> </h1>
			<a href="">Edit</a><br>
			<a href="/languages/delete/<c:out value="${lang.id}"/>">Delete</a><br>
			<a href="/languages">DashBoard</a><br>
  			
		</div>
	</section>
</body>
</html>