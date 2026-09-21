<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-
8">
<title>Movie Ticket Booking</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body{ background:#f5f5f5; }
.navbar{ background:#0d6efd; }
.navbar-brand{ color:white !important; font-size:40px; font-weight:bold; }
.nav-link{ color:white !important; font-size:20px; }
.banner{ height:300px; background:url("images/banner.jpg"); background-size:cover; background-position:center; }
.card{ transition:0.3s; margin-bottom:30px; }
.card:hover{ transform:scale(1.05); }
.card img{ height:350px; object-fit:cover; }
footer{ background:#0d6efd; color:white; padding:30px; text-align:center; margin-top:30px; }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
<div class="container">
<a class="navbar-brand fw-bold" href="index.jsp">
Movie Ticket Booking System
</a>
<button class="navbar-toggler" type="button"
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
<a class="nav-link" href="login.jsp">Login</a>
</li>
<li class="nav-item">
<a class="nav-link" href="register.jsp">Register</a>
</li>
</ul>
</div>
</div>
</nav>
<div class="banner"></div>
<div class="container mt-5">
<h1 class="text-center text-primary fw-bold display-4">Welcome To Movie Ticket Booking System</h1>
<p class="text-center fs-3">Book Your Favourite Movie Tickets Online</p>
<br>
<div class="row">
<div class="col-md-3">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBHuijcDqq1e-2kRx2RbZqHAItrnpksbsA7eK8rTdoow&s=10" class="card-img-top">
<div class="card-body">
<h4>Avengers Endgame</h4>
<p>Price : &#8377;250</p>
<a href="login.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<div class="col-md-3">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBpW5OLAF6eUPOoQaYE3kQoHjsHL0VyQmEf1WGncuUYw&s" class="card-img-top">
<div class="card-body">
<h4>Spider Man</h4>
<p>Price : &#8377;220</p>
<a href="login.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<div class="col-md-3">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlavx0KTwQHV-E8AFPD5A8f14AOVevVowkNY-3I05Q7Q&s" class="card-img-top">
<div class="card-body">
<h4>Stree 2</h4>
<p>Price : &#8377;280</p>
<a href="login.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<div class="col-md-3">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTntCrODpqcYbTkuZC5CZrpmxPP31hPdeFDyKQFkU5ZVA&s" class="card-img-top">
<div class="card-body">
<h4>KGF</h4>
<p>Price : &#8377;180</p>
<a href="login.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
</div>
<div class="row mt-4">
<div class="col-md-3">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Uk12MEAm6rF5yXyGSrTIkHrE12Amvi8rCwLbOoL_7A&s=10" class="card-img-top">
<div class="card-body">
<h4>Drashyam 3</h4>
<p>Price : &#8377;220</p>
<a href="login.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<div class="col-md-3">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzniLjwEy9GEsiMLz7rJITNOn5q62KA_PfilUYofUyfg&s=10" class="card-img-top">
<div class="card-body">
<h4>Ramayana</h4>
<p>Price : &#8377;280</p>
<a href="login.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<div class="col-md-3">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1W9O4kixi9UruToBIsIO3szwMOO0zQO78tujmyD7ibw&s" class="card-img-top">
<div class="card-body">
<h4>Toy Story 5</h4>
<p>Price : &#8377;240</p>
<a href="login.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
<div class="col-md-3">
<div class="card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAX7ULVQFlJa6eH09dXzLMLooQdh8QoqLFYXHxnnYSEg&s=10" class="card-img-top">
<div class="card-body">
<h4>Housefull 5</h4>
<p>Price : &#8377;180</p>
<a href="login.jsp" class="btn btn-primary">Book Now</a>
</div>
</div>
</div>
</div>
</div>
<footer>
Movie Ticket Booking System
<br>
© 2026 All Rights Reserved.
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>