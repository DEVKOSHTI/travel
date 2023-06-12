<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome Page</title>
	<link rel="stylesheet" href="tour.css">
	<!-- <style type="text/css">
		body{
			background-color: #58a59e;
			text-decoration: none;
			color: white;
		}
		header::before{
			background: url(image/tour-operator-business-plan.webp) no-repeat center center/cover;
			top: 0%;
			left: 0%;
			content: "";
			position: absolute;
			z-index: -1;
			width:100%;
			height:100%;
		}
		header{
			margin: 0%;
			display: flex;
			flex-direction: row;
		}
		.nav{
			display: flex;
			flex-direction: row;
			align-items: center;
			justify-content:flex-start;
			width: 100%;
			margin: 0%;
		}
		#selected{
    		text-decoration: none;
    		border-radius: 6px;
    		padding: 6px;
    		color: #fff;
    		background-color: #649119;
  		}
		li{
			list-style: none;
			padding: 11px 11px;
		}
		li img{
			width: 43px;
			height: 48px;
			filter: invert(1);
		}
		li a{
    		margin: 3px;
    		text-decoration: none;
    		border-radius: 6px;
    		width: 100px;
    		padding: 6px;
    		color: #fff;
    		background-color: #00b8ff;
  		}
   		li a:active,li a:hover{
    		text-decoration: none;
    		border: 2px #fff solid;
    		border-radius: 6px;
    		padding: 4px;
    		color: #fff;
    		background-color: #58a59e;
  		}
		div{
			display: flex;
			flex-direction: column;
			align-items: center;
    		justify-content: center;
		}
		.a{
			display:flex;
			flex-direction: column;
			align-items: center;
    		justify-content: center;
			margin: 0px;
			padding: 0px;
		}
  	</style> -->
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
