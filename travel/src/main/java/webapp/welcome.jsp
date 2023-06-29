<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome Page</title>
	<link rel="stylesheet" href="tour.css">
</head>
<body>
	<header class="header">
		<ul class="nav">
		    <li><img src="image/bus.png"></li>
			<li><a href="welcome.jsp" id="selected">home</a></li>
			<li><a href="places.jsp">places</a></li>
			<li><a href="booking.jsp">booking</a></li>
			<li><a href="show.jsp">show</a></li>
		</ul>
	</header>
	<div>
	<h1 >Welcome to Tour Management System</h1>
	<p>Please select an option:</p>
	<ul class="a">
	<li>
		<a href="places.jsp">View Places</a>
	</li>
	<li>
		<a href="booking.jsp">Book a Ticket</a>
	</li>
	<li>
		<a href="show.jsp" >show Ticket</a>
	</li>
	</ul>
	</div>
</body>
</html>
