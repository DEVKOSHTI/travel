<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Expired Records</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour_db", "root", "12345678");

        // Get the current date
        Date currentDate = new Date();

        // Construct the query to delete expired records
        String deleteQuery = "DELETE FROM ticket WHERE date < ?";

        // Prepare the statement
        PreparedStatement ps = con.prepareStatement(deleteQuery);
        ps.setDate(1, new java.sql.Date(currentDate.getTime()));

        // Execute the delete statement
        int rowsAffected = ps.executeUpdate();

        out.println("<p>" + rowsAffected + " expired records deleted successfully.</p>");

        con.close();
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
    }
%>
</body>
</html>
