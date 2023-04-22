<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Booking Page created by Dev</title>
</head>
<body>
	<h1>Book a Ticket</h1>
	<form action="insert.jsp" method="post">
		<label for="name">Name:</label>
		<input type="text" name="name" required><br>
		<label for="email">Email:</label>
		<input type="email" name="email" required><br>
		<label for="phone">Phone:</label>
		<input type="text" name="phone" required><br>
		<label for="place">Place:</label>
		<input type="text" name="place" required><br>
		<label for="date">Date:</label>
		<input type="date" name="date" required><br>
		<input type="submit" value="Book Now">
	</form>
	<br><footer>Created by Dev</footer>
</body>
</html>
