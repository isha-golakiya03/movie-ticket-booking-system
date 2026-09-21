package dao;


import java.sql.*;
import java.util.ArrayList;

import model.Movie;


public class MovieDAO {



    public ArrayList<Movie> getAllMovies(){


        ArrayList<Movie> list = new ArrayList<>();


        try {


            Connection con = DBConnection.getConnection();


            PreparedStatement ps = con.prepareStatement(
            "select * from movies"
            );


            ResultSet rs = ps.executeQuery();


            while(rs.next()) {


                Movie m = new Movie();


                m.setId(rs.getInt("id"));
                m.setName(rs.getString("name"));
                m.setGenre(rs.getString("genre"));
                m.setPrice(rs.getInt("price"));
                m.setImage(rs.getString("image"));


                list.add(m);

            }


        }
        catch(Exception e) {

            e.printStackTrace();

        }


        return list;

    }

}