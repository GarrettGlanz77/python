<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css">
<script defer
	src="https://use.fontawesome.com/releases/v5.1.0/js/all.js"></script>
</head>
<body>

	<div class="container">
		<div class="notification">
			<h1 class="title">
				Welcome,
				<c:out value="${user.firstName} ${user.lastName}" />
			</h1>
			<a href="/logout">Logout</a>
		</div>
		<p class="subtitle">Here are some of the events in your state.</p>
		<!-- table event in your state -->
		<table class="table is-fullwidth is-bordered">
		<thead>
			<tr>
				<td>Name</td>
				<td>Date</td>
				<td>Location</td>
				<td>Host</td>
				<td>Action/Status</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><a href="#">Scuba Diving</a></td>
				<td>December 10, 2021</td>
				<td>NYC</td>
				<td>Striker</td>
				<td><a href="#">Join</a>   <a href="#">Cancel</a></td>
			</tr>		
			<tr>
				<td><a href="#">teaching me</a></td>
				<td>December 12, 2021</td>
				<td>NYC</td>
				<td>Lee</td>
				<td><a href="#">Join</a>   <a href="#">Cancel</a></td>
			</tr>		
		</tbody>
		</table>


		<p class="subtitle">Here are some of the events in other states.</p>
		<!-- table event in other states -->
		<table class="table is-fullwidth is-bordered">
		<thead>
			<tr>
				<td>Name</td>
				<td>Date</td>
				<td>Location</td>
				<td>State</td>
				<td>Host</td>
				<td>Action</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><a href="#">Snow boarding</a></td>
				<td>December 17, 2021</td>
				<td>Tulsa</td>
				<td>Ninja</td>
				<td>OK</td>
				<td><a href="#">Join</a></td>
			</tr>		
			<tr>
				<td><a href="#">Shoveling Sand</a></td>
				<td>December 16, 2021</td>
				<td>Orlando</td>
				<td>Luna</td>
				<td>FL</td>
				<td><a href="#">Join</a></td>
			</tr>		
		</tbody>
		</table>



		<h1 class="subtitle">Create an Event</h1>

		<form:form method="POST" action="/create/event" modelAttribute="event">
			<form:label path="eventName">Name:</form:label>
			<form:input path="eventName" class="input" />
			<form:label path="eventDate">Date:</form:label>
			<form:input path="eventDate" type="date" class="input"/>
			<form:label path="city">Location:</form:label>
			<form:input path="city" class="input" />
			<form:select path="state" class="select is-one-third">
				<form:option value="OK">OK</form:option>
				<form:option value="NYC">NYC</form:option>
				<form:option value="FL">FL</form:option>

			</form:select>
			<input type="submit" value="Create" class="button" />
		</form:form>
	</div>
</body>
</html>