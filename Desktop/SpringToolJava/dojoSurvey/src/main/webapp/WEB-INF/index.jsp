<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Survey Results</title>
</head>
<body>
	<div id="container">
		
		<h2>Your Survey Results are:</h2>
		<h2 class="push">Name: <c:out value="${name}"/></h2>
		<h2 class="push">Dojo Location: <c:out value="${dojoLocation}"/></h2>
		<h2 class="push">Favorite Language: <c:out value="${favoriteLanguage}"/></h2>
		<h2 class="push">Comment: <c:out value="${comments}"/></h2>
		
	</div>
</body>
</html>