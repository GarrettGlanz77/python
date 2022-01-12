
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojo Survey</title>
</head>
<body>
	<div id="container">
		<form action="/run" method="post">
			
			<h2>Your Name: <input class="formfields" type="text" name="name"></h2>
			
			<h2>Dojo Location: <select class="formfields" name="dojoLocation"></h2>
			

				  <option value="Dallas">Dallas</option>
  				  <option value="Los Angeles">Los Angeles</option>
				  <option value="The Moon">The Moon</option>
				  <option value="Jupiter">Jupiter</option>
				  <option value="Tulsa">Tulsa</option>
  				  </select>
  				  
			<h2>Favorite Language: <select class="formfields" name="favoriteLanguage"></h2>
			
				  <option value="Java">Java</option>
				  <option value="Python">Python</option>
				  <option value="Angular">Angular</option>
				  <option value="Mern">Mern</option>
				  </select>
				
				<h2>Comment (optional):</h2>
		
			<h2><input class="formfieldscomment" type="textarea" name="comments"></h2>
		
			<h2><input class="formfieldsbutton" type="submit" value="Submit"></h2>
		</form>
	</div>
</body>
</html>