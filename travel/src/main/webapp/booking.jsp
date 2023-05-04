<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Booking Page created by Dev</title>
	<link rel="stylesheet" href="tour.css">
	<script src="sweetalert.min.js"></script>
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
			<li><a href="welcome.jsp">home</a></li>
			<li><a href="places.jsp">places</a></li>
			<li><a href="booking.jsp" id="selected">booking</a></li>
			<li><a href="show.jsp">show</a></li>
		</ul>
	</header>
	<div class="a"><h1>Book a Ticket</h1></div>
	<form action="insert.jsp" method="post" onsubmit="return submitForm(this);">
		<div class="a">Name:&nbsp;<input type="text" name="name" required placeholder="Firstname Lastname"></div>
		<div class="a">Email:&nbsp;<input type="email" name="email" required placeholder="namw@something.com"></div>
		<div class="a">Phone:&nbsp;<input type="tel" name="phone" required placeholder="Phone Number"></div>
		<div class="a">Adults:&nbsp;<input type="number" name="Adults" required placeholder="Numbers of adults"></div>
		<div class="a">Children:&nbsp;<input type="number" name="Children" required placeholder="Numbers of children"></div>
		<div class="a">Date of Journey:&nbsp;<input type="date" name="date" required></div>
		<div class="a">From:&nbsp;<input type="text" name="From" required placeholder="Enter Place to visit"></div>
		<div class="a">To:&nbsp;<input type="text" name="To" required placeholder="Enter Place to visit"></div>
		<div class="a">Bus type:&nbsp;<input type="text" name="Bus" required placeholder="Enter Place to visit"></div>
		<div class="a">Single/Return:&nbsp;<input type="text" name="Single/Return" required placeholder="Single/Return"></div>
		<div class="a"><input type="submit" value="Book Now" class="button"></div>
	</form>
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
