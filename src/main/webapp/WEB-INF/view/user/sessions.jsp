<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Trainers</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Playwrite+DE+Grund:wght@100..400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

<style>
body {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    background: black;
    color: white;
    margin: 0;
    overflow-x: hidden;
}

.form-container {
    display: flex;
    justify-content: center;
    width: 100%;
}

.form {
    background: #f7f7f7;
    padding: 2rem;
    border-radius: 0.5rem;
    box-shadow: 0 0.2rem 1rem rgba(0, 0, 0, 0.1);
    width: 18.75rem;
    text-align: center;
    margin-top: 2rem;
}

.form h1 {
    margin-bottom: 2rem;
    color: #333;
}

.form input {
    width: calc(100% - 2.4rem);
    padding: 1rem;
    margin: 1rem 0;
    border: 0.1rem solid #ccc;
    border-radius: 0.5rem;
}

.form button {
    background-color: #B08F44;
    color: white;
    padding: 1rem 2rem;
    border: none;
    border-radius: 0.5rem;
    cursor: pointer;
    margin-top: 1rem;
}

.form button:hover {
    background-color: #005f73;
}

.success-message {
    display: none;
    background-color: #4CAF50;
    color: white;
    padding: 1rem;
    margin-top: 1rem;
    border-radius: 0.5rem;
}

h1, h2, h5 {
    font-family: 'Roboto', sans-serif;
    font-weight: 600;
    text-align: center;
    
}

h1 {
    margin-top: 4rem;
    color:#B08F44;
}

p {
    font-size: 1.2rem;
    font-family: "Style Script", cursive;
    margin-bottom: 2rem;
    width: 900px;
    display: inline-block;
    text-align: center;
    max-width: 40em;
    margin: auto;
}

.container {
    padding: 2rem;
    box-sizing: border-box;
    align-items: center;
}

.card-container {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 2rem;
    flex-wrap: wrap;
}

footer {
  background: white;
  color: #B08F44;
  text-align: center;
  padding: 2rem;
  border-top: 1px solid #B08F44;
  font-family: 'Playwrite DE Grund', sans-serif;
}

footer h {
  display: block;
  font-size: 1.5rem;
  margin-bottom: 1rem;
  color: #B08F44;
}

footer p {
  font-size: 1rem;
  text-align: center;
}

.extra-info {
  text-align: center;
  color: #B08F44;
  background: black;
  padding: 2rem;
  margin-top: 2rem;
  border-top: 1px solid #B08F44;
  font-family: 'Playwrite DE Grund', sans-serif;
}

.extra-info h5 {
  font-size: 1.5rem;
  margin-bottom: 1rem;
}

.extra-info p {
  font-size: 1rem;
  margin-bottom: 0.5rem;
}
.card {
    flex: 1 1 calc(50% - 20px);
    background: #000;
    border-radius: 0.5rem;
    box-shadow: 0 0.2rem 1rem rgba(0, 0, 0, 0.1);
    overflow: hidden;
    margin-bottom: 20px;
}

.card img {
    width: 100%;
    height: 20rem;
    border-top-left-radius: 0.5rem;
    border-top-right-radius: 0.5rem;
}

.card-body {
    padding: 1.25rem;
    height: auto;
    display: flex;
    flex-direction: column;
}

.card-title {
    font-size: 1.5rem;
    margin-bottom: 1rem;
    font-weight: 600;
    color: #B08F44;
}

.card-text {
    font-size: 1rem;
    color: #ccc;
    flex: 1;
}

.table-container {
    background: white;
    padding: 2rem;
    margin: 2rem 0;
}
.main-body{
background: white;
}

table {
    width: 100%;
    border-collapse: collapse;
}

table, th, td {
    border: none;
}

th, td {
    padding: 1.2rem;
    text-align: center;
}

th {
    background-color: #f2f2f2;
    color: black;
}

td {
    background-color: #fff;
    color: black;
}

.table-container h2 {
    margin-top: 0;
}

button {
    width: 10rem;
    color: black;
    background: #B08F44;
    padding: 1rem 2rem;
    border: none;
    border-radius: 0.5rem;
    cursor: pointer;
    margin: 1rem auto;
    display: block;
    text-align: center;
}

button:hover {
    background-color: #005f73;
    color: white;
}

/* Media Queries */
@media (max-width: 768px) {
    .form {
        width: calc(100% - 2rem);
        padding: 1rem;
    }

    .card-container {
        flex-direction: column;
    }

    .card {
        flex: 1 1 100%;
        margin-bottom: 1rem;
    }

    p {
        width: calc(100% - 2rem);
        padding: 1rem;
        font-size: 1rem;
    }
    }
</style>
<%@ include file="frontTechnology.jsp"%>
</head>
<body>
<%@ include file="navigate.jsp"%>

<h1>ELEVATE YOUR RECOVERY</h1>
<p class="playwrite-de-grund-bold">
    Optimise your fitness, health and recovery with the latest addition at
    Citadel.<br>Citadel proudly unveils its cutting-edge recovery
    area, Citadel LAB. Redefining wellness for fitness
    enthusiasts. Including a rejuvenating cold plunge and advanced infrared
    sauna. Designed to accelerate recovery and enhance performance, these
    offerings provide a holistic approach to wellness.
</p>

<div class="container">
    <div class="card-container">
        <!-- Card with Photo -->
        <div class="card">
            <img src="/gym-mgmt/resources/images/coldplunge.jpg" class="card-img-top" alt="Cold Plunge Image">
        </div>
        
        <!-- Card with Description -->
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">COLD PLUNGE</h5>
                <p class="card-text">Immerse yourself in our new cold plunge, precisely set at 6 degrees, enhancing your post-workout recovery and boosting circulation. This unique experience extends beyond a simple plunge; it's a rejuvenating journey towards revitalisation and peak performance. It's an essential element for those committed to optimal wellbeing.</p>
            </div>
        </div>
    </div>
    <div class="card-container">
       
        <!-- Card with Description -->
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">SAUNA</h5>
                <p class="card-text">Step into the soothing warmth of infrared light, penetrating deep into your muscles for a detoxifying experience like no other. Elevate relaxation, stimulate collagen production, and amplify your overall wellbeing.</p>
            </div>
        </div>
        
         <!-- Card with Photo -->
        <div class="card">
            <img src="/gym-mgmt/resources/images/sauna.png" class="card-img-top" alt="Cold Plunge Image">
        </div>
    </div>
</div>

<button id="addSession">Add Session</button>

<div class="form-container">
    <div class="form" id="form" style="display: none;">
        <h1>Register Member For a Session</h1>
        <form id="sessionForm">
            <input type="text" name="name" id="name" placeholder="Name" required /><br>
            <input type="text" name="price" id="price" placeholder="Price" required /><br>
            <input type="text" name="duration" id="duration" placeholder="Duration" required /><br>
            <button type="button" id="submit">Submit</button>
              <button id="closeForm" type="button">Close</button> <!-- Close button -->
            <div id="successMessage" class="success-message">Duration saved successfully!</div>
        </form>
    </div>
</div>

<section id="main-body">

	<%
	if (session.getAttribute("active").equals("admin")) {
	%>
    <div class="table-container">
        
         <table id="sessiondataTableAdmin">
         <h2>PRICING</h2>
         <p>Session duration can be used however you please between services.</p>
            <thead>
                <tr>
                    <th>ID</th> <!-- This will be hidden -->
                    <th>Name</th>
                    <th>Price</th>
                    <th>Duration</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Data will be populated by DataTables -->
            </tbody>
        </table>
    </div>
    
    <%
    }
	%>
	<%
	if (session.getAttribute("active").equals("member"))  {
	%>
    <div class="table-container">
        
         <table id="sessiondataTable">
         <h2>PRICING</h2>
         <p>Session duration can be used however you please between services.</p>
            <thead>
                <tr>
                    <th>ID</th> <!-- This will be hidden -->
                    <th>Name</th>
                    <th>Price</th>
                    <th>Duration</th>
                    
                </tr>
            </thead>
            <tbody>
                <!-- Data will be populated by DataTables -->
            </tbody>
        </table>
    </div>
    
    <%
    }
	%>
</section>
<input type="hidden" id="sessionId">
	<div class="extra-info">
  <h5>LOCATED AT OUR KILIK BRANCH.</h5>
  <p>KILIK STREET.</p>
</div>

<!-- Include jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Include SweetAlert library -->
<script src="resources/jquery/sweetalert.min.js"></script>
<!-- Include DataTables library -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<!-- Include session.js script -->
<script src="/gym-mgmt/resources/js/session.js"></script>
</body>

<footer>
  <h>BECOME A CITADEL PARTNER.</h>
  <p>Copy right @2024.</p>
  <p> All rights reserved.</p>
</footer>
</html>

