<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert Page</title>
	<link rel="stylesheet" href="tour.css">
	<!-- <style type="text/css">
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
  	</style> -->
</head>
<body>
	<header class="header">
		<ul class="nav">
			 <li><img src="image/bus.png"></li>
			<li><a href="welcome.jsp">home</a></li>
			<li><a href="places.jsp">places</a></li>
			<li><a href="booking.jsp">booking</a></li>
			<li><a href="show.jsp">show</a></li>
		</ul>
	</header>
	<%
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String from = request.getParameter("From");
		String to = request.getParameter("To");
		String date = request.getParameter("date");
		String adult = request.getParameter("Adults");
		String children = request.getParameter("Children");
		String bus = request.getParameter("Bus");
		String sr = request.getParameter("Single/Return");
	
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour_db","root","12345678");

			PreparedStatement ps = con.prepareStatement("insert into ticket(name,email,phone,adult,children,date,`from`,`to`,bus,sr) values(?,?,?,?,?,?,?,?,?,?)");

			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,phone);
			ps.setString(4,adult);
			ps.setString(5,children);
			ps.setString(6,date);
			ps.setString(7,from);
			ps.setString(8,to);
			ps.setString(9,bus);
			ps.setString(10,sr);

			int i = ps.executeUpdate();

			if(i>0){
				out.println("<div class='a'><p>Ticket Booked Successfully!</p>");
				out.println("<a href='booking.jsp'><button class='button'>Book Another Ticket</button></a>");
				out.println("<a href='show.jsp'><button class ='button'>View Booked Tickets</button></a></div>");
			}
			else{
				out.println("<p>Sorry! Something went wrong.</p>");
			}

			con.close();
		}
		catch(Exception e){
			out.println("<h3 class='a'>"+e+"</h3>");
		}
		%>
</body>
</html>
