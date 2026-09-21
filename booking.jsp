<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String movieParam = request.getParameter("movie");
String theatreParam = request.getParameter("theatre");
String timeParam = request.getParameter("time");
String ticketsParam = request.getParameter("tickets");
String seatParam = request.getParameter("seat");
if(movieParam==null) movieParam="";
if(theatreParam==null) theatreParam="";
if(timeParam==null) timeParam="";
if(ticketsParam==null) ticketsParam="";
if(seatParam==null) seatParam="";
%>
<%
    String message = "";
    boolean success = false;
    if (request.getMethod().equalsIgnoreCase("POST")) {
        String name = request.getParameter("name");
        String movie = request.getParameter("movie");
        String theatre = request.getParameter("theatre");
        String time = request.getParameter("time");
        String ticketsStr = request.getParameter("tickets");
        String seat = request.getParameter("seat");
        Connection con = null;
        PreparedStatement ps = null;
        try {
            int tickets = Integer.parseInt(ticketsStr);
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/movie_booking_db", "root", "");
            String sql = "INSERT INTO bookings (name, movie, theatre, show_time, tickets, seat_type) VALUES (?, ?, ?, ?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, movie);
            ps.setString(3, theatre);
            ps.setString(4, time);
            ps.setInt(5, tickets);
            ps.setString(6, seat);
            int rows = ps.executeUpdate();
            if (rows > 0) {
                success = true;
                message = "Booking Confirmed Successfully!";
            } else {
                message = "Booking Failed. Try Again.";
            }
        } catch (ClassNotFoundException e) {
            message = "Driver Not Found: " + e.getMessage();
        } catch (SQLException e) {
            message = "Database Error: " + e.getMessage();
        } catch (NumberFormatException e) {
            message = "Invalid Ticket Number";
        } finally {
            try { if (ps != null) ps.close(); } catch (Exception e) {}
            try { if (con != null) con.close(); } catch (Exception e) {}
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Movie Ticket</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body{
background:#f5f5f5;
}
.navbar{
background:#0d6efd;
}
.navbar-brand{
color:white !important;
font-size:28px;
font-weight:bold;
}
.nav-link{
color:white !important;
}
.card{
margin-top:40px;
padding:30px;
border-radius:15px;
box-shadow:0px 0px 15px lightgray;
}
footer{
background:#0d6efd;
color:white;
text-align:center;
padding:20px;
margin-top:40px;
}
</style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
<div class="container">
<a class="navbar-brand" href="index.jsp">
Movie Ticket Booking System
</a>
<div class="collapse navbar-collapse">
<ul class="navbar-nav ms-auto">
<li class="nav-item">
<a class="nav-link" href="index.jsp">Home</a>
</li>
<li class="nav-item">
<a class="nav-link" href="movies.jsp">Movies</a>
</li>
<li class="nav-item">
<a class="nav-link" href="seatlayout.jsp">seats</a>
</li>
<li class="nav-item">
<a class="nav-link active" href="booking.jsp">BookTicket</a>
</li>
<li class="nav-item">
<a class="nav-link" href="history.jsp">BookingHistory</a>
</li>
<li class="nav-item">
<a class="nav-link" href="login.jsp">Login</a>
</li>
<li class="nav-item">
<a class="nav-link" href="register.jsp">Register</a>
</li>
</ul>
</div>
</div>
</nav>
<!-- Booking Form -->
<div class="container">
<div class="row justify-content-center">
<div class="col-md-6">
<div class="card">
<h2 class="text-center text-primary">
Movie Ticket Booking
</h2>
<form action="booking.jsp" method="post">
<div class="mb-3">
<label class="form-label">
Customer Name
</label>
<input type="text"
name="name"
class="form-control"
required>
</div>
<div class="mb-3">
<label class="form-label">
Movie Name
</label>
<select name="movie" class="form-control">
<option>Alpha</option>
<option>War 2</option>
<option>Sky force</option>
<option>Border 2</option>
<option>Ramayana</option>
<option>Avatar 3</option>
<option>Dhamaal 4</option>
<option>Bhool Bhulaiyaa 3</option>
<option>Avengers Endgame</option>
<option>Spider Man</option>
<option>yeh jawaani hai deewani</option>
<option>jolly llb 3</option>
<option>Housefull 5</option>
</select>
</div>
<div class="mb-3">
<label class="form-label">
Theatre
</label>
<select name="theatre" class="form-control">
<option>PVR RahulRaj Mall</option>
<option>INOX VR Mall </option>
<option>Rajhans Cinemas </option>
<option>Cinepolis Imperial Square Mall</option>
<option>Rajhans Prime Cinema </option>
<option>Cinepolis</option>
</select>
</div>
<div class="mb-3">
<label class="form-label">
Show Time
</label>
<select name="time" class="form-control">
<option>10:00 AM</option>
<option>1:00 PM</option>
<option>4:00 PM</option>
<option>7:00 PM</option>
<option>10:00 PM</option>
</select>
</div>
<div class="mb-3">
<label class="form-label">
Number of Tickets
</label>
<input type="number"
name="tickets"
class="form-control"
min="1"
max="10"
required>
</div>
<div class="mb-3">
<label class="form-label">
Seat Type
</label>
<select name="seat" class="form-control">
<option>Silver</option>
<option>Gold</option>
<option>Platinum</option>
</select>
</div>
<div class="text-center">
<input type="submit"
value="Confirm Booking"
class="btn btn-success">
<a href="movies.jsp"
class="btn btn-secondary">
Back
</a>
</div>
</form>
</div>
</div>
</div>
</div>
<footer>
<h5>Movie Ticket Booking System</h5>
<p>© 2026 All Rights Reserved.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<% if (!message.equals("")) { %>
<script>
    alert("<%= message.replace("\"","'") %>");
    <% if (success) { %>
        window.location.href = "booking.jsp";
    <% } %>
</script>
<% } %>

</body>
</html>