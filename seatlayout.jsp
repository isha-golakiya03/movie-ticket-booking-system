<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
    // =========================================
    // Database Connection
    // =========================================

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    ArrayList<String> bookedSeats = new ArrayList<>();

    // =========================================
    // Get Parameters
    // =========================================

    String name = request.getParameter("name");
    String movie = request.getParameter("movie");
    String theatre = request.getParameter("theatre");
    String seat = request.getParameter("seat");
    String time = request.getParameter("time");

    if (name == null) name = "";
    if (movie == null) movie = "";
    if (theatre == null) theatre = "";
    if (seat == null) seat = "";

    if (time == null || time.trim().equals("")) {
        time = "10:30 AM";
    }

    // =========================================
    // Database Connection
    // =========================================

    try {

        Class.forName("com.mysql.cj.jdbc.Driver");

        con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/movie_booking_db",
            "root",
            ""
        );

        // =========================================
        // INSERT SELECTED SEATS INTO seats TABLE
        // =========================================

        if (seat != null && !seat.trim().equals("")) {

            String arr[] = seat.split(",");

            for (String s : arr) {

                String seatNumber = s.trim();

                if (!seatNumber.equals("")) {

                    PreparedStatement insert = con.prepareStatement(
                        "INSERT INTO seats " +
                        "(name, movie, theatre, show_time, seat_no, status) " +
                        "VALUES (?, ?, ?, ?, ?, ?)"
                    );

                    insert.setString(1, name);
                    insert.setString(2, movie);
                    insert.setString(3, theatre);
                    insert.setString(4, time);
                    insert.setString(5, seatNumber);
                    insert.setString(6, "Booked");

                    insert.executeUpdate();

                    insert.close();
                }
            }

            // Clear seat parameter so refresh does not insert again
            seat = "";
        }

        // =========================================
        // LOAD BOOKED SEATS
        // =========================================

        ps = con.prepareStatement(
            "SELECT seat_no FROM seats " +
            "WHERE movie=? AND theatre=? AND show_time=? " +
            "AND status='Booked'"
        );

        ps.setString(1, movie);
        ps.setString(2, theatre);
        ps.setString(3, time);

        rs = ps.executeQuery();

        while (rs.next()) {

            bookedSeats.add(
                rs.getString("seat_no")
            );
        }

    } catch (Exception e) {

        out.println(
            "<h5 style='color:red;text-align:center;'>" +
            "Database Error: " +
            e.getMessage() +
            "</h5>"
        );

    }
%>


<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Seat Layout</title>

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
>

<style>

body {
    background: #f5f5f5;
    font-family: Arial, Helvetica, sans-serif;
}

/* =========================
   NAVBAR
========================= */

.navbar {
    background: #0d6efd;
}

.navbar-brand {
    color: #fff !important;
    font-size: 28px;
    font-weight: bold;
}

.nav-link {
    color: white !important;
    font-weight: 500;
}

.nav-link:hover {
    color: yellow !important;
}

/* =========================
   MOVIE HEADER
========================= */

.movie-header {
    background: white;
    margin: 20px auto;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,.15);
}

/* =========================
   SHOW TIME
========================= */

.showtime-bar {
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
    margin-top: 20px;
}

.showtime-btn {
    border: 2px solid #28a745;
    color: #28a745;
    background: white;
    border-radius: 8px;
    padding: 10px 18px;
    cursor: pointer;
    font-weight: bold;
    transition: .3s;
}

.showtime-btn.active {
    background: #28a745;
    color: white;
}

/* =========================
   CATEGORY
========================= */

.category-title {
    text-align: center;
    font-size: 22px;
    font-weight: bold;
    margin: 30px 0 15px;
}

/* =========================
   SEAT ROW
========================= */

.seat-row {
    display: flex;
    justify-content: center;
    gap: 6px;
    margin-bottom: 8px;
}

.row-label {
    width: 30px;
    font-weight: bold;
}

/* =========================
   SEAT
========================= */

.seat {
    width: 32px;
    height: 32px;
    border: 2px solid #28a745;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 4px;
    cursor: pointer;
    background: white;
    color: #28a745;
    font-size: 11px;
}

.seat:hover {
    background: #d4edda;
}

.selected {
    background: #28a745 !important;
    color: white !important;
}

.sold {
    background: #bfbfbf !important;
    color: white !important;
    border-color: #999 !important;
    cursor: not-allowed;
}

.gap {
    width: 25px;
}

/* =========================
   SCREEN
========================= */

.screen {
    width: 75%;
    margin: 40px auto;
    text-align: center;
    padding: 12px;
    background: #ddd;
    border-radius: 20px;
    font-size: 20px;
    font-weight: bold;
}

/* =========================
   BOOKING CARD
========================= */

.card {
    margin-bottom: 20px;
}

</style>

</head>


<body>


<!-- =========================
     NAVBAR
========================= -->

<nav class="navbar navbar-expand-lg">

<div class="container">

<a class="navbar-brand" href="index.jsp">
    Movie Ticket Booking
</a>

<button
    class="navbar-toggler"
    type="button"
    data-bs-toggle="collapse"
    data-bs-target="#menu"
>
    <span class="navbar-toggler-icon"></span>
</button>

<div
    class="collapse navbar-collapse"
    id="menu"
>

<ul class="navbar-nav ms-auto">

<li class="nav-item">
<a class="nav-link" href="index.jsp">
Home
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="movies.jsp">
Movies
</a>
</li>

<li class="nav-item">
<a class="nav-link active" href="seatlayout.jsp">
Seats
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="booking.jsp">
BookTicket
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="history.jsp">
BookingHistory
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="login.jsp">
Login
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="register.jsp">
Register
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="logout.jsp">
Logout
</a>
</li>

</ul>

</div>

</div>

</nav>


<!-- =========================
     MAIN CONTAINER
========================= -->

<div class="container">


<!-- =========================
     MOVIE HEADER
========================= -->

<div class="movie-header">

<h2>
<%= movie %>
</h2>

<h5>
Theatre :
<b>
<%= theatre %>
</b>
</h5>


<!-- =========================
     SHOW TIMES
========================= -->

<div class="showtime-bar">

<div
    class="showtime-btn active"
    data-time="10:30 AM"
>
10:30 AM
</div>

<div
    class="showtime-btn"
    data-time="01:00 PM"
>
01:00 PM
</div>

<div
    class="showtime-btn"
    data-time="04:00 PM"
>
04:00 PM
</div>

<div
    class="showtime-btn"
    data-time="07:00 PM"
>
07:00 PM
</div>

<div
    class="showtime-btn"
    data-time="10:00 PM"
>
10:00 PM
</div>

</div>

</div>


<!-- =========================
     SCREEN
========================= -->

<div class="screen">

SCREEN THIS WAY

</div>


<!-- =========================
     RECLINER
========================= -->

<div class="category-title">

₹400 - RECLINER

</div>

<div id="recliner"></div>


<!-- =========================
     EXECUTIVE
========================= -->

<div class="category-title">

₹220 - EXECUTIVE

</div>

<div id="executive"></div>


<!-- =========================
     ROYAL
========================= -->

<div class="category-title">

₹220 - ROYAL

</div>

<div id="royal"></div>


<!-- =========================
     MARVEL
========================= -->

<div class="category-title">

₹190 - MARVEL

</div>

<div id="marvel"></div>


<br>
<br>


<!-- =========================
     SEAT LEGEND
========================= -->

<div class="container">

<div class="row justify-content-center text-center">

<div class="col-md-2">

<div class="seat mx-auto"></div>

<p>
Available
</p>

</div>


<div class="col-md-2">

<div class="seat selected mx-auto"></div>

<p>
Selected
</p>

</div>


<div class="col-md-2">

<div class="seat sold mx-auto"></div>

<p>
Booked
</p>

</div>

</div>

</div>


<br>
<br>


<!-- =========================
     BOOKING DETAILS
========================= -->

<div class="container">

<div class="card shadow">

<div class="card-header bg-success text-white">

<h4 class="mb-0">
Booking Details
</h4>

</div>


<div class="card-body">


<form
    action="BookingServlet"
    method="post"
    id="seatForm"
>


<!-- =========================
     NAME
========================= -->

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">
Name
</label>

<input
    type="text"
    name="name"
    id="name"
    class="form-control"
    value="<%= name %>"
    placeholder="Enter Your Name"
    required
>

</div>


<!-- =========================
     MOVIE
========================= -->

<div class="col-md-6 mb-3">

<label class="form-label">
Movie
</label>

<select
    name="movie"
    id="movie"
    class="form-select"
    required
>

<option value="">
Select Movie
</option>

<option value="Alpha">
Alpha
</option>

<option value="War 2">
War 2
</option>

<option value="Sky Force">
Sky Force
</option>

<option value="Border 2">
Border 2
</option>

<option value="Avengers End">
Avengers End
</option>

<option value="Dhamaal 4">
Dhamaal 4
</option>

<option value="Ramayana">
Ramayana
</option>

<option value="Avatar">
Avatar
</option>

<option value="Bhool Bhulaiyaa 3">
Bhool Bhulaiyaa 3
</option>

<option value="Jolly LLB 3">
Jolly LLB 3
</option>

<option value="Yeh Jawaani Hai Deewani">
Yeh Jawaani Hai Deewani
</option>

<option value="Spider Man">
Spider Man
</option>

</select>

</div>


<!-- =========================
     THEATRE
========================= -->

<div class="col-md-6 mb-3">

<label class="form-label">
Theatre
</label>

<select
    name="theatre"
    id="theatre"
    class="form-select"
    required
>

<option value="">
Select Theatre
</option>

<option value="PVR RahulRaj Mall">
PVR RahulRaj Mall
</option>

<option value="INOX VR Mall">
INOX VR Mall
</option>

<option value="Rajhans Cinemas">
Rajhans Cinemas
</option>

<option value="Cinepolis Imperial Square Mall">
Cinepolis Imperial Square Mall
</option>

<option value="Rajhans Prime Cinema">
Rajhans Prime Cinema
</option>

<option value="Cinepolis">
Cinepolis
</option>

</select>

</div>


<!-- =========================
     SHOW TIME
========================= -->

<div class="col-md-6 mb-3">

<label class="form-label">
Show Time
</label>

<input
    type="text"
    id="time"
    name="time"
    class="form-control"
    value="<%= time %>"
    readonly
>

</div>


<!-- =========================
     SELECTED SEATS
========================= -->

<div class="col-md-6 mb-3">

<label class="form-label">
Selected Seats
</label>

<input
    type="text"
    id="seat"
    name="seat"
    class="form-control"
    placeholder="Select Seat"
    readonly
>

</div>


<!-- =========================
     TOTAL SEATS
========================= -->

<div class="col-md-6 mb-3">

<label class="form-label">
Total Seats
</label>

<input
    type="text"
    id="tickets"
    name="tickets"
    class="form-control"
    value="0"
    readonly
>

</div>


<!-- =========================
     TOTAL AMOUNT
========================= -->

<div class="col-md-6 mb-3">

<label class="form-label">
Total Amount (₹)
</label>

<input
    type="text"
    id="amount"
    name="amount"
    class="form-control"
    value="0"
    readonly
>

</div>


<!-- =========================
     SEAT TYPE
========================= -->

<div class="col-md-6 mb-3">

<label class="form-label">
Seat Type
</label>

<select
    name="seat_type"
    id="seat_type"
    class="form-select"
>

<option value="Recliner">
Recliner
</option>

<option value="Executive">
Executive
</option>

<option value="Royal">
Royal
</option>

<option value="Marvel">
Marvel
</option>

</select>

</div>


<!-- =========================
     CONFIRM
========================= -->

<div class="col-md-6 d-grid">

<label>
&nbsp;
</label>

<button
    type="submit"
    class="btn btn-success btn-lg"
>
Confirm Booking
</button>

</div>

</div>

</form>

</div>

</div>

</div>


<br>
<br>

</div>


<!-- =========================
     FOOTER
========================= -->

<footer class="bg-primary text-white text-center p-3">

<h5>
Movie Ticket Booking System
</h5>

<p class="mb-0">
© 2026 All Rights Reserved
</p>

</footer>


<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


<script>

// =========================================
// SELECTED SEATS
// =========================================

const selected = [];

let totalAmount = 0;


// =========================================
// BOOKED SEATS FROM DATABASE
// =========================================

const bookedSeats = [

<%

for (int i = 0; i < bookedSeats.size(); i++) {

    out.print(
        "'" + bookedSeats.get(i) + "'"
    );

    if (i != bookedSeats.size() - 1) {
        out.print(",");
    }
}

%>

];


// =========================================
// BUILD SEAT ROW
// =========================================

function buildRow(rowLabel, blocks, price) {

    let html = '<div class="seat-row">';

    html +=
        '<div class="row-label">' +
        rowLabel +
        '</div>';

    let seatNo = 1;


    blocks.forEach(function(count, index) {

        for (let i = 1; i <= count; i++) {

            let id =
                rowLabel +
                seatNo;

            let cls = "seat";


            // Check booked seat

            if (bookedSeats.includes(id)) {

                cls += " sold";

            }


            html +=
                '<div class="' +
                cls +
                '" ' +
                'data-id="' +
                id +
                '" ' +
                'data-price="' +
                price +
                '" ' +
                'onclick="toggleSeat(this)">' +

                String(seatNo).padStart(2, '0') +

                '</div>';


            seatNo++;

        }


        if (index < blocks.length - 1) {

            html +=
                '<div class="gap"></div>';

        }

    });


    html += '</div>';

    return html;
}


// =========================================
// RECLINER
// =========================================

document.getElementById("recliner").innerHTML =
    buildRow("A", [21], 400);


// =========================================
// EXECUTIVE
// =========================================

let executiveHTML = "";

[
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L"
].forEach(function(r) {

    executiveHTML +=
        buildRow(r, [4, 14, 4], 220);

});

document.getElementById("executive").innerHTML =
    executiveHTML;


// =========================================
// ROYAL
// =========================================

let royalHTML = "";

[
    "M",
    "N",
    "O"
].forEach(function(r) {

    royalHTML +=
        buildRow(r, [4, 14], 220);

});

document.getElementById("royal").innerHTML =
    royalHTML;


// =========================================
// MARVEL
// =========================================

document.getElementById("marvel").innerHTML =
    buildRow("P", [18], 190);


// =========================================
// SELECT / UNSELECT SEAT
// =========================================

function toggleSeat(el) {

    // Already booked

    if (el.classList.contains("sold")) {

        return;

    }


    let seat =
        el.dataset.id;

    let price =
        parseInt(el.dataset.price);


    // Unselect

    if (el.classList.contains("selected")) {

        el.classList.remove("selected");

        selected.splice(
            selected.indexOf(seat),
            1
        );

        totalAmount -= price;

    }

    // Select

    else {

        if (selected.length >= 10) {

            alert(
                "Maximum 10 seats allowed."
            );

            return;
        }


        el.classList.add("selected");

        selected.push(seat);

        totalAmount += price;

    }


    updateForm();

}


// =========================================
// UPDATE FORM
// =========================================

function updateForm() {

    document.getElementById("seat").value =
        selected.join(",");

    document.getElementById("tickets").value =
        selected.length;

    document.getElementById("amount").value =
        totalAmount;


    let active =
        document.querySelector(
            ".showtime-btn.active"
        );


    if (active) {

        document.getElementById("time").value =
            active.dataset.time;

    }

}


// =========================================
// SHOW TIME
// =========================================

document
    .querySelectorAll(".showtime-btn")
    .forEach(function(btn) {

        btn.onclick = function() {

            document
                .querySelectorAll(".showtime-btn")
                .forEach(function(b) {

                    b.classList.remove("active");

                });


            this.classList.add("active");


            updateForm();

        };

    });


// =========================================
// FORM VALIDATION
// =========================================

document
    .getElementById("seatForm")
    .addEventListener(
        "submit",
        function(e) {

            if (selected.length == 0) {

                alert(
                    "Please select at least one seat."
                );

                e.preventDefault();

                return;
            }


            if (
                document.getElementById("name").value.trim() == ""
            ) {

                alert(
                    "Please enter your name."
                );

                e.preventDefault();

                return;
            }


            if (
                document.getElementById("movie").value == ""
            ) {

                alert(
                    "Please select a movie."
                );

                e.preventDefault();

                return;
            }


            if (
                document.getElementById("theatre").value == ""
            ) {

                alert(
                    "Please select a theatre."
                );

                e.preventDefault();

                return;
            }

        }
    );


// =========================================
// INITIAL LOAD
// =========================================

updateForm();

</script>


<%

// =========================================
// CLOSE DATABASE
// =========================================

try {

    if (rs != null)
        rs.close();

    if (ps != null)
        ps.close();

    if (con != null)
        con.close();

} catch (Exception e) {

    out.println(e);

}

%>


</body>

</html>