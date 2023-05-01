<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Booking Page created by Dev</title>
	<link rel="stylesheet" href="tour.css">
</head>
<body>
	<header class="header">
		<ul class="nav">
			<li><a href="welcome.jsp">home</a></li>
			<li><a href="places.jsp">places</a></li>
			<li><a href="booking.jsp" id="selected">booking</a></li>
			<li><a href="show.jsp">show</a></li>
		</ul>
	</header>
	<div class="a"><h1>Book a Ticket</h1></div>
	<form action="insert.jsp" method="post">
		<div class="a">
		<label for="name" >Name:</label>
		<input type="text" name="name" required placeholder="Enter Your Name"></div>
		<div class="a"><label for="email">Email:</label>
		<input type="email" name="email" required placeholder="Enter Your Email"></div>
		<div class="a"><label for="phone">Phone:</label>
		<input type="tel" name="phone" required placeholder="Enter Your Phone No."></div>
		<div class="a"><label for="place">Place:</label>
		<input type="text" name="place" required placeholder="Enter Place to visit"></div>
		<div class="a"><label for="date">Date:</label>
		<input type="date" name="date" required></div>
		<div class="a"><input type="submit" value="Book Now" class="button"></div>
	</form>
</body>
</html>
