<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert Page created by Dev</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String place = request.getParameter("place");
		String date = request.getParameter("date");

		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour_db","root","12345678");

			PreparedStatement ps = con.prepareStatement("insert into ticket(name,email,phone,place,date) values(?,?,?,?,?)");

			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,phone);
			ps.setString(4,place);
			ps.setString(5,date);

			int i = ps.executeUpdate();

			if(i>0){
				out.println("<p>Ticket Booked Successfully!</p>");
				out.println("<p>thank you,visiit again<p>");
				out.println("<a href='booking.jsp'><button>Book Another Ticket</button></a>");
				out.println("<a href='show.jsp'><button>View Booked Tickets</button></a>");
			}
			else{
				out.println("<p>Sorry! Something went wrong.</p>");
			}

			con.close();
		}
		catch(Exception e){
			out.println(e);
		}
	%>
	<br><br><footer>Created by Dev</footer>
</body>
</html>
