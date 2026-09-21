<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movies | Movie Ticket Booking System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body{
    background:#f5f5f5;
    font-family:Arial;
}
/* Navbar */
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
    font-size:18px;
}
.nav-link:hover{
    color:yellow !important;
}
/* Banner */
.banner img{
    width:100%;
    height:380px;
    object-fit:cover;
    border-radius:12px;
}
/* Heading */
.heading{
    text-align:center;
    margin-top:35px;
}
.heading h2{
    color:#0d6efd;
    font-weight:bold;
}
.heading p{
    color:gray;
    font-size:18px;
}
/* Search */
.search-box{
    margin-top:30px;
    margin-bottom:40px;
}
/* Cards */
.card{
    border:none;
    border-radius:12px;
    overflow:hidden;
    transition:.4s;
    box-shadow:0px 2px 12px lightgray;
    margin-bottom:30px;
}
.card:hover{
    transform:translateY(-8px);
    box-shadow:0px 8px 25px gray;
}
.card img{
    width:100%;
    height:550px;
    object-fit:cover;
}
.card-body{
    text-align:center;
}
.card h5{
    font-weight:bold;
}
.btn-primary{
    width:100%;
}
/* Footer */
footer{
    background:#0d6efd;
    color:white;
    text-align:center;
    padding:25px;
    margin-top:50px;
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
<a class="nav-link active" href="movies.jsp">Movies</a>
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
<a class="nav-link" href="login.jsp">Login</a>
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
<img src="images/moviebanner.jpg"
class="img-fluid rounded shadow">
</div>
<!-- Heading -->
<div class="container heading">
<h2>Now Showing Movies</h2>
<p>Book Your Favourite Movie Tickets Online</p>
</div>
<!-- Movies Start -->
<div class="container">
<div class="row">
<!-- Movie 1 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsNaO7B7u_jrmyYHOoVAqwR_FglTMK7qMYsfTluLaVbA&s=10" class="card-img-top">
<div class="card-body">
<h5>Alpha</h5>
<p>Action | Hindi</p>
<h6 class="text-success">₹250</h6>
<a href="booking.jsp" class="btn btn-primary">
Book Now
</a>
</div>
</div>
</div>
<!-- Movie 2 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKYFMMQztzJzt-Ve0-P3Islaz524aBYTz2oZ3MAd37sA&s=10" class="card-img-top">
<div class="card-body">
<h5>War 2</h5>
<p>Action | Hindi</p>
<h6 class="text-success">₹280</h6>
<a href="booking.jsp" class="btn btn-primary">
Book Now
</a>
</div>
</div>
</div>
<!-- Movie 3 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsNZVRft3mRs6208F6H5CwAHDFyNqLmMhSvZTUcBbm8g&s=10" class="card-img-top">
<div class="card-body">
<h5>Sky Force</h5>
<p>Action | Tamil</p>
<h6 class="text-success">₹260</h6>
<a href="booking.jsp" class="btn btn-primary">
Book Now
</a>
</div>
</div>
</div>
<!-- Movie 4 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMmVCGXPGpNe1TYSSgOWXAlRwMPnQ3_Sv-4wzxK9Js7w&s=10" class="card-img-top">
<div class="card-body">
<h5>Border 2</h5>
<p>action | Hindi</p>
<h6 class="text-success">₹240</h6>
<a href="booking.jsp" class="btn btn-primary">
Book Now
</a>
</div>
</div>
</div>
<!-- Movie 5 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl3dEynaA0KxvaR41-pbQBSPe00ucLmMmxlUt2BkJUEg&s=10" class="card-img-top">
<div class="card-body">
<h5>Dhamaal 4</h5>
<p>Comedy | Hindi</p>
<h6 class="text-success">₹220</h6>
<a href="booking.jsp" class="btn btn-primary">
Book Now
</a>
</div>
</div>
</div>
<!-- Movie 6 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzniLjwEy9GEsiMLz7rJITNOn5q62KA_PfilUYofUyfg&s=10" class="card-img-top">
<div class="card-body">
<h5>Ramayana</h5>
<p>Mythology | Hindi</p>
<h6 class="text-success">₹300</h6>
<a href="booking.jsp" class="btn btn-primary">
Book Now
</a>
</div>
</div>
</div>
<!-- Movie 7 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuZZN9-JpMkRw4oIgvJIOoXIDoCHms-n1qxfcyLPj-bw&s=10" class="card-img-top">
<div class="card-body">
<h5>Bhool Bhulaiyaa 3</h5>
<p>Horror | Hindi</p>
<h6 class="text-success">₹270</h6>
<a href="booking.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<!-- Movie 8 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_-biEQ9REZ2cHEnwvKwCVUv1yswgDWEBEbrZy-qtYhg&s=10" class="card-img-top">
<div class="card-body">
<h5>Avatar 3</h5>
<p>Sci-Fi | English</p>
<h6 class="text-success">₹350</h6>
<a href="booking.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<!-- Movie 9 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPt_dPTEs6RHOp73cI62Gz8fG8VdK83fZQYxLyKg7VyA&s=10" class="card-img-top">
<div class="card-body">
<h5>Spider-Man</h5>
<p>Action | English</p>
<h6 class="text-success">₹260</h6>
<a href="booking.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<!-- Movie 10 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyZf1drOJkO4JmpZT4MKmB3lsGt1eeEUeXGRcNL2iEug&s=10" class="card-img-top">
<div class="card-body">
<h5>jolly llb 3</h5>
<p>Funny | Hindi</p>
<h6 class="text-success">₹250</h6>
<a href="booking.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<!-- Movie 11 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdMlGSYF0ZtT2QZokjE6vxx0j902aYcEjnEBSJkoJMcA&s=10" class="card-img-top">
<div class="card-body">
<h5>yeh jawaani hai deewani</h5>
<p>Drama | Hindi</p>
<h6 class="text-success">₹320</h6>
<a href="booking.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<!-- Movie 12 -->
<div class="col-md-12">
<div class="card mx-auto mb-4" style="max-width: 500px;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWIQM24wEEL-i9h1Zt7BAQxFhyrlVyntTcMrN4bIsbEw&s=10" class="card-img-top">
<div class="card-body">
<h5>12th fail </h5>
<p>Drama | Hindi</p>
<h6 class="text-success">₹290</h6>
<a href="booking.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
</div>
</div>
<!-- Coming Soon -->
<div class="container mt-5">
<h2 class="text-center text-danger mb-4">
 Coming Soon
</h2>
<div class="row">
<div class="col-md-4">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT24zQfvCcqrnZpnwPNpQ0U18J35kKVipvG8-MrpKhj-Q&s=10" class="card-img-top">
<div class="card-body text-center">
<h5>Jailer 2</h5>
<p>Release : 2026</p>
<button class="btn btn-warning">
Coming Soon
</button>
</div>
</div>
</div>
<div class="col-md-4">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf06uoSv2nVgj3w-8U-Q63h4IN5e6h1AhVi910lhSOxQ&s=10" class="card-img-top">
<div class="card-body text-center">
<h5>Pushpa 3</h5>
<p>Release : 2027</p>
<button class="btn btn-warning">
Coming Soon
</button>
</div>
</div>
</div>
<div class="col-md-4">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmFKss5w3Jeb6Rz3F7chE-3bL5OTeDf-5x31LXD4mTLg&s=10" class="card-img-top">
<div class="card-body text-center">
<h5>Drishyam 3</h5>
<p>Release : 2027</p>
<button class="btn btn-warning">
Coming Soon
</button>
</div>
</div>
</div>
</div>
</div>
<!-- Footer -->
<footer>
<div class="container">
<div class="row">
<div class="col-md-4">
<h4> Movie Ticket Booking System</h4>
<p>
Book your favourite movies anytime, anywhere.
</p>
</div>
<div class="col-md-4">
<h5>Quick Links</h5>
<p><a href="index.jsp" class="text-white text-decoration-none">Home</a></p>
<p><a href="movies.jsp" class="text-white text-decoration-none">Movies</a></p>
<p><a href="booking.jsp" class="text-white text-decoration-none">Book Ticket</a></p>
<p><a href="history.jsp" class="text-white text-decoration-none">History</a></p>
</div>
<div class="col-md-4">
<h5>Contact Us</h5>
<p> Surat, Gujarat</p>
<p> +91 989******9</p>
<p>moviebooking@gmail.com</p>
</div>
</div>
<hr class="bg-light">
<p class="text-center mb-0">
© 2026 Movie Ticket Booking System | All Rights Reserved.
</p>
</div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>