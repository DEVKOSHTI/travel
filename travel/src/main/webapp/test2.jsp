<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Places Page</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #F9F9F9;
		}
		
		h1 {
			color: #3F3F3F;
			text-align: center;
			margin-top: 50px;
		}
		
		p {
			color: #555555;
			text-align: center;
			margin-top: 20px;
			font-size: 18px;
		}
		
		img {
			display: block;
			margin: 20px auto;
			width: 250px;
			height: 250px;
			object-fit: cover;
			border-radius: 10px;
			box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);
			transition: all 0.3s ease-in-out;
		}
		
		img:hover {
			transform: scale(1.1);
			box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.5);
		}
		
		button {
			display: block;
			margin: 50px auto;
			padding: 10px 20px;
			background-color: #3F3F3F;
			color: #FFFFFF;
			font-size: 18px;
			border: none;
			border-radius: 5px;
			box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);
			cursor: pointer;
			transition: all 0.3s ease-in-out;
		}
		
		button:hover {
			background-color: #FFFFFF;
			color: #3F3F3F;
			box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.5);
		}
		
	</style>
</head>
<body>
	<h1>View Places</h1>
	<p>Select a place to view:</p>
	<a href="#"><img src="image1.jpg"></a>
	<a href="#"><img src="image2.jpg"></a>
	<a href="#"><img src="image3.jpg"></a>
	<a href="#"><img src="image4.jpg"></a>
	<a href="#"><img src="image5.jpg"></a>
	<a href="booking.jsp"><button>Book a Ticket</button></a>
</body>
</html>
