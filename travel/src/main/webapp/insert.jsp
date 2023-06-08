<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	 img{
	 filter:invert(100%);
    width: 30px;
    height: 35px;
    margin: -12px 4px;
    padding: 0px;
  }
  </style>
	<meta charset="UTF-8">
	<title>Insert Page created by Dev</title>
	<link rel="stylesheet" href="tour.css">
</head>
<body>
	<header class="header">
		<ul class="nav">
			 <li><img src="bus.png"></li>
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

			PreparedStatement ps = con.prepareStatement("insert into ticket(name,email,phone,adult,children,date,from,to,bus,sr) values(?,?,?,?,?,?,?,?,?,?)");

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
				out.println("<a href='booking.jsp'><button>Book Another Ticket</button></a>");
				out.println("<a href='show.jsp'><button>View Booked Tickets</button></a></div>");
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
