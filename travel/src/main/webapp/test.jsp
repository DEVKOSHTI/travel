<%@ page import="java.sql.*" %>
<html>
  <body>
    <%
      Connection conn = null;
      ResultSet rs = null;
      PreparedStatement stmt = null;
      String query = "SELECT * FROM city";
      try {
        // Connect to MySQL database
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world","root","12345678");
        
        // Prepare and execute SQL query
        stmt = conn.prepareStatement(query);
        rs = stmt.executeQuery();
        
        // Display results
        while (rs.next()) {
          out.println("City Name: " + rs.getString("Name") + "<br>");
          out.println("Country Code: " + rs.getString("CountryCode") + "<br>");
          out.println("District: " + rs.getString("District") + "<br>");
          out.println("Population: " + rs.getInt("Population") + "<br>");
          out.println("<br>");
        }
      } catch (ClassNotFoundException e) {
        e.printStackTrace();
      } catch (SQLException e) {
        e.printStackTrace();
      } finally {
        // Close resources
        if (rs != null) {
          try {
            rs.close();
          } catch (SQLException e) {}
        }
        if (stmt != null) {
          try {
            stmt.close();
          } catch (SQLException e) {}
        }
        if (conn != null) {
          try {
            conn.close();
          } catch (SQLException e) {}
        }
      }
    %>
  </body>
</html>
