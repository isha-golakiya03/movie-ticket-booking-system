<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking History</title>
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
.banner{
height:250px;
background:url("images/historybanner.jpg");
background-size:cover;
background-position:center;
}
.card{
box-shadow:0px 2px 10px lightgray;
border:none;
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
<a class="nav-link" href="booking.jsp">BookTicket</a>
</li>
<li class="nav-item">
<a class="nav-link active" href="history.jsp">BookingHistory</a>
</li>
<li class="nav-item">
<a class="nav-link" href="login.jsp">Login</a>
</li>
<li class="nav-item">
<a class="nav-link" href="register.jsp">Register</a>
</li>
</ul>
</div>
</nav>
<!-- Banner -->
<div class="banner"></div>
<div class="container mt-5">
<h2 class="text-center text-primary mb-4">
Booking History
</h2>
<div class="row mb-4">
<div class="col-md-4">
<div class="card text-center p-3">
<h5>Total Bookings</h5>
<h2 class="text-primary">4</h2>
</div>
</div>
<div class="col-md-4">
<div class="card text-center p-3">
<h5>Total Tickets</h5>
<h2 class="text-success">10</h2>
</div>
</div>
<div class="col-md-4">
<div class="card text-center p-3">
<h5>Total Amount</h5>
<h2 class="text-danger">₹2890</h2>
</div>
</div>
</div>
<table class="table table-bordered table-hover text-center">
<tr class="table-primary">
<th>ID</th>
<th>Name</th>
<th>Movie</th>
<th>Theatre</th>
<th>Time</th>
<th>Tickets</th>
<th>Seat</th>
<th>Amount</th>
</tr>
<tr>
<td>101</td>
<td>Isha</td>
<td>Alpha</td>
<td>PVR RahulRaj Mall</td>
<td>7:00 PM</td>
<td>2</td>
<td>Gold</td>
<td>₹500</td>
</tr>
<tr>
<td>102</td>
<td>Khushi</td>
<td>War 2</td>
<td>INOX VR Mall</td>
<td>4:00 PM</td>
<td>3</td>
<td>Silver</td>
<td>₹840</td>
</tr>
<tr>
<td>103</td>
<td>Priya</td>
<td>Coolie</td>
<td>Rajhans Prime</td>
<td>10:00 AM</td>
<td>1</td>
<td>Platinum</td>
<td>₹350</td>
</tr>
<tr>
<td>104</td>
<td>Riya</td>
<td>Ramayana</td>
<td>Cinepolis</td>
<td>1:00 PM</td>
<td>4</td>
<td>Gold</td>
<td>₹1200</td>
</tr>
</table>
<div class="text-center mt-4">
<a href="booking.jsp" class="btn btn-success">
Book Another Ticket
</a>
<a href="movies.jsp" class="btn btn-primary">
View Movies
</a>
<a href="index.jsp" class="btn btn-secondary">
Home
</a>
</div>
</div>
<footer>
<h4>Movie Ticket Booking System</h4>
<p>Book Your Favourite Movies Online</p>
<p>© 2026 All Rights Reserved.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>