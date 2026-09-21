<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body{
background:#eef5ff;
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
height:320px;
object-fit:cover;
border-radius:12px;
}
.register-box{
background:white;
padding:35px;
border-radius:15px;
box-shadow:0px 0px 20px lightgray;
margin-top:30px;
margin-bottom:30px;
}
.benefit-box{
background:white;
padding:30px;
border-radius:15px;
box-shadow:0px 0px 20px lightgray;
margin-top:30px;
margin-bottom:30px;
}
.benefit-box img{
width:100%;
height:220px;
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
<a class="nav-link" href="history.jsp">Booking
History</a>
</li>
<li class="nav-item">
<a class="nav-link" href="login.jsp">Login</a>
</li>
<li class="nav-item">
<a class="nav-link active" href="register.jsp">Register</a>
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
<!-- Left Side -->
<div class="col-md-5">
<div class="benefit-box">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjjodSH5snGytW3VPOdgH2wVneSQ7pjotqUOsQLvwMSQ&s=10">
<h2 class="text-primary mt-3">
Become a Premium Member
</h2>
<p class="mt-3">
 Get ₹100 OFF on First Booking
</p>
<p>
 Free Popcorn & Coke on Selected Shows
</p>
<p>
 Early Access to New Movie Tickets
</p>
<p>
 Exclusive Weekend Discounts
</p>
<p>
 Earn Reward Points Every Booking
</p>
<hr>
<h4 class="text-danger">
 Welcome Bonus
</h4>
<h5>
Register Today &
Get Instant Movie Coupons
</h5>
</div>
</div>
<!-- Register Form -->
<div class="col-md-7">
<div class="register-box">
<h2 class="text-center text-primary">
Create Your Account
</h2>
<p class="text-center text-muted">
Register and Start Booking Movies Online
</p>
<form action="RegisterServlet" method="post">
<div class="row">
<div class="col-md-6 mb-3">
<label class="form-label">Full Name</label>
<input type="text"
name="name"
class="form-control"
placeholder="Enter Full Name"
required>
</div>
<div class="col-md-6 mb-3">
<label class="form-label">Email Address</label>
<input type="email"
name="email"
class="form-control"
placeholder="Enter Email"
required>
</div>
</div>
<div class="row">
<div class="col-md-6 mb-3">
<label class="form-label">Mobile Number</label>
<input type="text"
name="mobile"
class="form-control"
placeholder="Enter Mobile Number"
required>
</div>
<div class="col-md-6 mb-3">
<label class="form-label">Date of Birth</label>
<input type="date"
name="dob"
class="form-control"
required>
</div>
</div>
<div class="row">
<div class="col-md-6 mb-3">
<label class="form-label">Gender</label>
<select name="gender" class="form-select">
<option>Select Gender</option>
<option>Male</option>
<option>Female</option>
<option>Other</option>
</select>
</div>
<div class="col-md-6 mb-3">
<label class="form-label">City</label>
<select name="city" class="form-select">
<option>Select City</option>
<option>Surat</option>
<option>Ahmedabad</option>
<option>Vadodara</option>
<option>Rajkot</option>
<option>Bhavnagar</option>
<option>Vapi</option>
</select>
</div>
</div>
<div class="row">
<div class="col-md-6 mb-3">
<label class="form-label">Password</label>
<input type="password"
name="password"
class="form-control"
placeholder="Create Password"
required>
</div>
<div class="col-md-6 mb-3">
<label class="form-label">Confirm Password</label>
<input type="password"
name="confirm"
class="form-control"
placeholder="Confirm Password"
required>
</div>
</div>
<div class="form-check mt-3">
<input class="form-check-input"
type="checkbox"
required>
<label class="form-check-label">
I agree to the Terms & Conditions
</label>
</div>
<br>
<div class="row">
<div class="col-md-6 d-grid">
<input type="submit"
value="Create Account"
class="btn btn-primary btn-lg">
</div>
<div class="col-md-6 d-grid">
<input type="reset"
value="Clear"
class="btn btn-danger btn-lg">
</div>
</div>
<br>
<div class="alert alert-success text-center">
<h5> New User Offer</h5>
<p class="mb-0">
Register today and get
<strong>₹100 OFF</strong> on your first movie ticket booking.
</p>
</div>
<p class="text-center mt-4">
Already have an account?
<a href="login.jsp"
class="fw-bold text-decoration-none">
Login Here
</a>
</p>
<div class="text-center">
<a href="index.jsp"
class="btn btn-success">
Back To Home
</a>
</div>
</form>
</div>
</div>
</div>
</div>
<footer>
<div class="container">
<h3> Movie Ticket Booking System</h3>
<p class="mt-3">
Book your favourite movies anytime, anywhere with the best ticket booking experience.
</p>
<div class="row mt-4">
<div class="col-md-4">
<h5> Address</h5>
<p>RahulRaj Mall,<br>
Adajan, Surat</p>
</div>
<div class="col-md-4">
<h5> Contact</h5>
<p>
+91 989******9
<br>
moviebooking@gmail.com
</p>
</div>
<div class="col-md-4">
<h5> Follow Us</h5>
<p>
Facebook
<br>
Instagram
<br>
YouTube
</p>
</div>
</div>
<hr>
<p>
© 2026 Movie Ticket Booking System
<br>
All Rights Reserved.
</p>
</div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>