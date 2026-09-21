package dao;
import java.sql.*;
import model.User;
public class UserDAO {
    public boolean registerUser(User user) {
        boolean status = false;
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
            "insert into users(name,email,password,mobile) values(?,?,?,?)"
            );
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getMobile());
            int result = ps.executeUpdate();
            if(result > 0)
                status = true;
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    public User loginUser(String email,String password) {
        User user = null;
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
            "select * from users where email=? and password=?"
            );
            ps.setString(1,email);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setMobile(rs.getString("mobile"));
            }
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}