<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
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
font-size:30px;
font-weight:bold;
}
.nav-link{
color:white !important;
font-size:18px;
}
.nav-link:hover{
color:yellow !important;
}
.banner img{
width:100%;
height:300px;
object-fit:cover;
border-radius:10px;
}
.login-box{
background:white;
padding:40px;
margin-top:40px;
border-radius:15px;
box-shadow:0px 0px 20px lightgray;
min-height:560px;
}
.offer-card{
background:white;
padding:20px;
margin-top:40px;
border-radius:15px;
box-shadow:0px 0px 20px lightgray;
min-height:560px;
text-align:center;
}
.offer-card img{
width:100%;
height:260px;
object-fit:cover;
border-radius:10px;
}
footer{
background:#0d6efd;
color:white;
text-align:center;
padding:25px;
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
<button class="navbar-toggler bg-light"
type="button"
data-bs-toggle="collapse"
data-bs-target="#menu">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="menu">
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
<a class="nav-link" href="history.jsp">BookingHistory</a>
</li>
<li class="nav-item">
<a class="nav-link active" href="login.jsp">Login</a>
</li>
<li class="nav-item">
<a class="nav-link" href="register.jsp">Register</a>
</li>
</ul>
</div>
</div>
</nav>
<!-- Banner -->
<div class="container mt-4">
</div>
<div class="container">
<div class="row">
<!-- Login Form -->
<div class="col-md-6">
<div class="login-box">
<h2 class="text-center text-primary">
User Login
</h2>
<p class="text-center text-muted">
Login to Book Your Favourite Movies
</p>
<form action="LoginServlet" method="post">
<div class="mb-3">
<label>Email Address</label>
<input type="email"
name="email"
class="form-control"
placeholder="Enter Email"
required>
</div>
<div class="mb-3">
<label>Password</label>
<input type="password"
name="password"
class="form-control"
placeholder="Enter Password"
required>
</div>
<div class="d-grid">
<input type="submit"
value="Login"
class="btn btn-primary btn-lg">
</div>
<br>
<div class="text-center">
<a href="#" class="text-decoration-none">
Forgot Password?
</a>
</div>
<hr>
<p class="text-center">
Don't have an account?
<a href="register.jsp" class="fw-bold text-decoration-none">
Register Here
</a>
</p>
<a href="index.jsp" class="btn btn-success w-100">
Back To Home
</a>
</form>
</div>
</div>
<!-- Offer Section -->
<div class="col-md-6">
<div class="offer-card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB6girj5I3dXJzT21Wm4uEPMe8oxoF7pyIrfrhU-wq2A&s=10" class="img-fluid">
<h2 class="text-danger mt-3">
 Movie Combo Offer
</h2>
<h4 class="text-success">
Buy 2 Tickets & Get
</h4>
<h3 class="text-primary">
FREE Popcorn + Coke 
</h3>
<hr>
<p> Valid on Gold & Platinum Seats</p>
<p> Weekend Shows Only</p>
<p> Limited Time Offer</p>
<p class="text-danger fw-bold">
Save up to ₹350
</p>
<a href="movies.jsp"
class="btn btn-warning btn-lg">
Book Now
</a>
</div>
</div>
</div>
</div>
<footer>
<h4>Movie Ticket Booking System</h4>
<p>Book Your Favourite Movies Anytime, Anywhere</p>
<p> Surat, Gujarat</p>
<p> +91 989******9</p>
<p> moviebooking@gmail.com</p>
<hr>
<p>© 2026 Movie Ticket Booking System | All Rights Reserved.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>