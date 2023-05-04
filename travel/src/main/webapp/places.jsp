<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Places Page created by Dev</title>
	<style type="text/css">
	 img{
	 filter:invert(100%);
    width: 30px;
    height: 35px;
    margin: -12px 4px;
    padding: 0px;
  }
  </style>
	<link rel="stylesheet" href="tour.css">
</head>
<body>
	<header class="header">
		<ul class="nav">
			 <li><img src="bus.png"></li>
			<li><a href="welcome.jsp">home</a></li>
			<li><a href="places.jsp" id="selected">places</a></li>
			<li><a href="booking.jsp">booking</a></li>
			<li><a href="show.jsp">show</a></li>
		</ul>
	</header>
	<div class="a"><h1>View Places</h1>
	<p>Click on the button to see images:</p>
	<a href="MOUNT-ABU.jpg">Abu</a><br>
	<a href="996x492.jpg">Goa</a><br>
	<a href="m_Dwarkadhish Temple-1_l_498_640.webp">Dwarka</a><br>
	<a href="vhqpb0olfj8ygcj7e5i1pv0do0ch_shutterstock_1134114548.webp">Jaipur</a><br>
	<a href="fnmqtte1kn8fqazxzvu6fnim9vt0_1586518830_maxresdefault.jpg">Ujjain</a><br>
	<a href="booking.jsp" id="ticket" class="button">Book a Ticket</a>
	</div>
</body>
</html>
