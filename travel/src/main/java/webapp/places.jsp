<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Places Page</title>
	<link rel="stylesheet" href="tour.css">
	<!-- <style type="text/css">
		body{
			background-color: #58a59e;
			text-decoration: none;
			color:white;
		}
		header::before{
			background: url(tour-operator-business-plan.webp) no-repeat center center/cover;
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
		li{
			list-style: none;
			padding: 11px 11px;
		}
		li img{
			width: 43px;
    		height: 48px;
    		filter: invert(1);
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
  	</style>-->
</head>
<body>
	<header class="header">
		<ul class="nav">
			 <li><img src="image/bus.png"></li>
			<li><a href="welcome.jsp">home</a></li>
			<li><a href="places.jsp" id="selected">places</a></li>
			<li><a href="booking.jsp">booking</a></li>
			<li><a href="show.jsp">show</a></li>
		</ul>
	</header>
	<div><h1>View Places</h1>
	<p>Click on the button to see images:</p>
	<ul class="a">
	<li><a href="image/MOUNT-ABU.jpg">Abu</a></li>
	<li><a href="image/996x492.jpg">Goa</a></li>
	<li><a href="image/m_Dwarkadhish Temple-1_l_498_640.webp">Dwarka</a></li>
	<li><a href="image/vhqpb0olfj8ygcj7e5i1pv0do0ch_shutterstock_1134114548.webp">Jaipur</a></li>
	<li><a href="image/fnmqtte1kn8fqazxzvu6fnim9vt0_1586518830_maxresdefault.jpg">Ujjain</a></li>
	<li><a href="booking.jsp" id="ticket" class="button">Book a Ticket</a></li>
	</ul>
	</div>
</body>
</html>
