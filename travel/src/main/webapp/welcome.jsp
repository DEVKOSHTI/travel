<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome Page created by Dev,Yash,Shubham </title>
	<link rel="stylesheet" href="tour.css">
	<style type="text/css">
	 img{
	 filter:invert(100%);
    width: 30px;
    height: 35px;
    margin: -12px 4px;
    padding: 0px;
  }
  </style>
</head>
<body>
	<header class="header">
		<ul class="nav">
		    <li><img src="bus.png"></li>
			<li><a href="welcome.jsp" id="selected">home</a></li>
			<li><a href="places.jsp">places</a></li>
			<li><a href="booking.jsp">booking</a></li>
			<li><a href="show.jsp">show</a></li>
		</ul>
	</header>
	<div>
	<h1 align="center">Welcome to Tour Management System</h1>
	<p align="center">Please select an option:</p>
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
