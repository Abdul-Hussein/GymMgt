<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Packages</title>
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet"
    href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<link
    href="https://fonts.googleapis.com/css2?family=Playwrite+DE+Grund:wght@100..400&display=swap"
    rel="stylesheet">

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

h2,h1 {
    margin-top: 4rem;
    text-align: center;
    font-size: 2rem;
    color:#B08F44;
}

button {
    width: 10rem;
    color: black;
    background: #B08F44;
    padding: 1rem 2rem;
    border: none;
    border-radius: 0.5rem;
    cursor: pointer;
    margin: 1rem;
    justify-content: center;
    text-align: center;
}

button:hover {
    background-color: #005f73;
    color: white;
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
    color: #B08F44;
}

.form input {
    width: calc(100% - 2.4rem);
    padding: 1rem;
    margin: 1rem 0;
    border: 0.1rem solid #ccc;
    border-radius: 0.5rem;
}

.card-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    background: black;
}

.card {
    background-color: white;
    padding: 1.5rem;
    margin: 1rem;
    width: 300px; /* Adjust width as needed */
    border-radius: 0.5rem;
    box-shadow: 0 0.2rem 1rem rgba(0, 0, 0, 0.1);
    text-align: center;
    color:black;
}

.card h3 {
    margin-bottom: 1rem;
}

.card p {
    margin-bottom: 0.5rem;
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
.success-message {
    display: none;
    background-color: #4CAF50;
    color: white;
    padding: 1rem;
    margin-top: 1rem;
    border-radius: 0.5rem;
}

.container {
    display: flex;
    flex-direction: column;
    width: 100%;
    padding: 2rem;
    box-sizing: border-box;
    align-items: center; /* Center align all child elements */
}

.playwrite-de-grund-bold {
    font-size: 1.2rem;
    font-family: "Style Script", cursive;
    margin-bottom: 2rem;
    width: 900px;
    display: inline-block;
    text-align: center;
    max-width: 40em;
    margin: auto;
}

.table-container h2 {
    margin-top: 0;
}
</style>
<%@ include file="frontTechnology.jsp"%>
</head>
<body>
    <%@ include file="navigate.jsp"%>

    <h1>OUR PACKAGES</h1>
    <p class="playwrite-de-grund-bold">Explore our diverse range of packages tailored to your fitness goals.</p>
    
    <div class="form-container">
        <div class="form" id="packageForm" style="display: none;">
            <h1>Register Package</h1>
            <form id="form">
                <input type="hidden" id="packageId" />
                <!-- Hidden field for ID -->
                <input type="text" name="packageName" id="packageName" placeholder="Package Name" required /><br>
                <input type="text" name="description" id="description" placeholder="Description" required /><br>
                <input type="text" name="price" id="price" placeholder="Price" required /><br>
                <input type="text" name="duration" id="duration" placeholder="Duration" required /><br>
                <button type="button" id="register">Submit</button>
                <div id="successMessage" class="success-message">Package saved successfully!</div>
            </form>
            <button type="button" id="closeForm" style="display: none;">Close</button>
            <!-- Close button -->
        </div>
    </div>
	<%
	if (session.getAttribute("active").equals("member")) {
	%>
    <div class="container">
        <h2>PACKAGE DETAILS</h2>
        <div id="packageCards" class="card-container">
            <!-- Package cards will be populated dynamically -->
        </div>
    </div>
	<%
	}
	%>
	
	
	
		<%
	if (session.getAttribute("active").equals("admin")) {
	%>
	<button id="addPackage">Add Package</button>
	    <div class="container">
        <h2>PACKAGE DETAILS</h2>
        <div id="packageCardsForAdmin" class="card-container">
            <!-- Package cards will be populated dynamically -->
        </div>
    </div>
	<%
	}
	%>
	
		<div class="extra-info">
  <h5>LOCATED AT OUR KILIK BRANCH</h5>
  <p>KILIK STREET.</p>
</div>

    <!-- Include jQuery library -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Include SweetAlert library -->
    <script src="resources/jquery/sweetalert.min.js"></script>
    <!-- Include package.js script -->
    <script src="/gym-mgmt/resources/js/package.js"></script>
</body>

<footer>
  <h>WE VALUE OUR PARTNERS.</h>
  <p>Copy right @2024.</p>
  <p> All rights reserved.</p>
</footer>


</html>
