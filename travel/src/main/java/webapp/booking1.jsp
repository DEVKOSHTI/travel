<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Booking Page</title>
	<link rel="stylesheet" href="tour.css">
	<script src="sweetalert.min.js"></script>
	<style type="text/css">
		body{
			background-color: #58a59e;
			text-decoration: none;
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
  	</style>
</head>
<body>
	<header class="header">
		<ul class="nav">
			 <li><img src="bus.png"></li>
			<li><a href="welcome.jsp">home</a></li>
			<li><a href="places.jsp">places</a></li>
			<li><a href="booking.jsp" id="selected">booking</a></li>
			<li><a href="show.jsp">show</a></li>
		</ul>
	</header>
	<div>
		<div class="a">
		  <h1>Book a Ticket</h1>
		</div>
		<form action="insert.jsp" method="post" onsubmit="return submitForm(this);" class="a">
		  <label for="name">Name:</label>
		  <input type="text" id="name" name="name" required placeholder="Firstname Lastname">
		
		  <label for="email">Email:</label>
		  <input type="email" id="email" name="email" required placeholder="name@something.com">
		
		  <label for="phone">Phone:</label>
		  <input type="tel" id="phone" name="phone" required placeholder="Phone Number">
		
		  <label for="adults">Adults:</label>
		  <input type="number" id="adults" name="Adults" required placeholder="Numbers of adults">
		
		  <label for="children">Children:</label>
		  <input type="number" id="children" name="Children" required placeholder="Numbers of children">
		
		  <label for="date">Date of Journey:</label>
		  <input type="date" id="date" name="date" required>
		
		  <label for="from">From:</label>
		  <input type="text" id="from" name="From" required placeholder="Enter Place to visit">
		
		  <label for="to">To:</label>
		  <input type="text" id="to" name="To" required placeholder="Enter Place to visit">
		
		  <label for="bus">Bus type:</label>
		  <input type="text" id="bus" name="Bus" required placeholder="Enter Place to visit">
		
		  <label for="singleReturn">Single/Return:</label>
		  <input type="text" id="singleReturn" name="Single/Return" required placeholder="Single/Return">
		
		  <input type="submit" value="Book Now" class="button">
		</form>
	</div>
	<script>
    function submitForm(form) {
        swal({
            title: "Are you sure?",
            text: "",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
        .then(function (isOkay) {
            if (isOkay) {
                form.submit();
            }
        });
        return false;
    }
</script>
</body>
</html>
