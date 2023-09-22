
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String userId = request.getParameter("userId");
    String turfId = request.getParameter("turfId");
    String timings = request.getParameter("timings");
    String date = request.getParameter("date");

    Connection connection = null;
    PreparedStatement statement = null;

    try {
        // Establish database connection
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "username", "password");

        // Create SQL query
        String sql = "INSERT INTO your_table (user_id, turf_id, timings, date) VALUES (?, ?, ?, ?)";
        statement = connection.prepareStatement(sql);

        // Set parameters
        statement.setString(1, userId);
        statement.setString(2, turfId);
        statement.setString(3, timings);
        statement.setString(4, date);

        // Execute query
        statement.executeUpdate();

        // Redirect to a success page or do any additional processing
        response.sendRedirect("success.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        // Handle exceptions, show an error page, or redirect to an error page
    } finally {
        // Close resources (statement and connection)
        if (statement != null) statement.close();
        if (connection != null) connection.close();
    }
%>

</body>
</html>