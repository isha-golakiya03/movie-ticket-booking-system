package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.Booking;

public class BookingDAO {

    public boolean bookMovie(Booking booking) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO bookings(user_id, movie_id, seat, amount) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, booking.getUserId());
            ps.setInt(2, booking.getMovieId());
            ps.setString(3, booking.getSeat());
            ps.setInt(4, booking.getAmount());

            int i = ps.executeUpdate();

            if (i > 0) {
                status = true;
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}