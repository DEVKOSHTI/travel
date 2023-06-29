<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Show Page</title>
	<link rel="stylesheet" href="tour.css">
</head>
<body>
	<header class="header">
		<ul class="nav">
			 <li><img src="image/bus.png"></li>
			<li><a href="welcome.jsp">home</a></li>
			<li><a href="places.jsp">places</a></li>
			<li><a href="booking.jsp">booking</a></li>
			<li><a href="show.jsp" id="selected">show</a></li>
		</ul>
	</header>
	<h1 align="center">Ticket Details</h1>
	<form action="show.jsp" method="post">
			<div class="form-group"></div>
				<label>
				<span> phone number:</span>
				<input type="text" name="ticket_id" required>
			</label>
			</div>
		<input type="submit" value="Show Details" class="button">
		<a href="booking.jsp" class="button">Book Another Ticket</a>
	</form>
	<%
		String ticket_id = request.getParameter("ticket_id");
		if(ticket_id != null){
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour_db","root","12345678");
				PreparedStatement ps = con.prepareStatement("select * from ticket where phone=?");
				ps.setString(1,ticket_id);
				ResultSet rs = ps.executeQuery();
				if(rs.next()){
				out.print("<div><table border='1' class='center'><tr><th>Name</th><th>Email</th><th>Phone</th><th>Adults</th><th>childrens</th><th>Date</th><th>From</th><th>To</th><th>Bus</th><th>Single/Return</th></tr>");
				do{
					out.print("<tr><td>"+rs.getString("name")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("phone")+"</td><td>"+rs.getString("adult")+"</td><td>"+rs.getString("children")+"</td><td>"+rs.getString("date")+"</td><td>"+rs.getString("from")+"</td><td>"+rs.getString("to")+"</td><td>"+rs.getString("bus")+"</td><td>"+rs.getString("sr")+"</td></tr>");
				}while(rs.next());
				out.print("</table></div>"); 
				}else{
					out.print("<p>No records found for Phone number: "+ticket_id+"</p>");
				}
			}catch(Exception e){
				out.print("<p>Error: "+e.getMessage()+"</p>");
			}
		}
	%>
</body>
</html>