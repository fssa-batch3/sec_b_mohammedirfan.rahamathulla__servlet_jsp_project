package in.fssa.turf;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseOperations {

    private String query;

    public void insertBooking(String email, int turfId, String fromTime, String toTime, String date) {
        try {
            // Establish a connection to your database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database_name", "username", "password");
            
            String query = "INSERT INTO bookings (email, turf_id, from_time, to_time, date) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, email);
            stmt.setInt(2, turfId);
            stmt.setString(3, fromTime);
            stmt.setString(4, toTime);
            stmt.setString(5, date);
            stmt.executeUpdate();
            
            // Close the statement and connection after use
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
