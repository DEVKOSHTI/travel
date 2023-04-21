<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Show Page</title>
</head>
<body>
	<h1>Ticket Details</h1>
	<form action="show.jsp" method="post">
		<label for="ticket_id">Enter Ticket ID:</label>
		<input type="text" name="ticket_id">
		<input type="submit" value="Show Details">
	</form>
	<%
		String ticket_id = request.getParameter("ticket_id");
		if(ticket_id != null){
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour_db","root","12345678");
				PreparedStatement ps = con.prepareStatement("select * from ticket where id=?");
				ps.setInt(1,Integer.parseInt(ticket_id));
				ResultSet rs = ps.executeQuery();
				if(rs.next()){
					out.print("<table border='1'><tr><th>ID</th><th>Name</th><th>Email</th><th>Phone</th><th>Place</th><th>Date</th></tr>");
					out.print("<tr><td>"+rs.getInt("id")+"</td><td>"+rs.getString("name")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("phone")+"</td><td>"+rs.getString("place")+"</td><td>"+rs.getString("date")+"</td></tr></table>");
				}else{
					out.print("<p>No records found for Ticket ID: "+ticket_id+"</p>");
				}
			}catch(Exception e){
				out.print("<p>Error: "+e.getMessage()+"</p>");
			}
		}
	%>
	<a href="booking.jsp"><button>Book Another Ticket</button></a>
</body>
</html>
