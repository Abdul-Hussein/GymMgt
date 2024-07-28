<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Member Register</title>
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
	font-family: 'Playwrite DE Grund', sans-serif;
	width: 100%;
}

h2 {
	margin: 2rem;
	color: #B08F44;
	text-align: center;
}

.description {
	color: black;
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
	color: black;
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

.container {
	display: flex;
	flex-direction: column;
	width: 100%;
	padding: 2rem;
	box-sizing: border-box;
	align-items: center; /* Center align all child elements */
}

.table-container {
	background: white;
	padding: 2rem;
	margin-top: 2rem;
	margin-bottom: 2rem;
	margin-left: 0rem;
	margin-right: 0rem;
}

table {
	width: 100%;
	border-collapse: collapse;
}

table, th, td {
	border: none; /* Remove table borders */
}

th, td {
	padding: 1.2rem;
	text-align: center;
}

th {
	background-color: #f2f2f2;
	color: black;
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

td {
	background-color: #fff;
	color: black;
}

.table-container h2 {
	margin-top: 0;
}

.card-container {
	display: flex;
	justify-content: center;
	gap: 20px;
	margin-top: 2rem;
	flex-wrap: wrap;
}

.card {
	flex: 1 1 calc(50% - 20px);
	background: #000;
	border-radius: 0.5rem;
	box-shadow: 0 0.2rem 1rem rgba(0, 0, 0, 0.1);
	
	margin-bottom: 20px;
}

.card img {
	width: 100%;
	height: 20rem;
	object-fit: cover;
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
	padding: 1rem;
}

.card-text {
	font-size: 1rem;
	color: #ccc;
	flex: 1;
	padding: 1rem;
}

h1 {
	margin-top: 4rem;
	color: #B08F44;
	text-align: center;
}

p {
	font-size: 1.2rem;
	font-family: "Style Script", cursive;
	margin-bottom: 2rem;
	margin: auto;
	text-align: center;
	max-width: 900px;
}

/* Media Queries for Responsive Design */
@media (max-width: 768px) {
	h1, h2, p {
		font-size: 1rem;
		padding: 1rem;
	}

	.card-container {
		flex-direction: column;
		align-items: center;
	}

	.card {
		flex: 1 1 100%;
	}

	.form {
		width: 100%;
		padding: 1rem;
	}

	.form input {
		width: calc(100% - 1.2rem);
	}

	button {
		width: 100%;
	}

	.table-container {
		padding: 1rem;
	}

	th, td {
		padding: 0.5rem;
	}
}

@media (max-width: 480px) {
	h1, h2, p {
		font-size: 0.8rem;
		padding: 0.5rem;
	}

	.card img {
		height: 15rem;
	}

	.card-title, .card-text {
		padding: 0.5rem;
	}

	.form {
		padding: 0.5rem;
	}

	.form input {
		padding: 0.5rem;
		margin: 0.5rem 0;
	}

	.form button {
		padding: 0.5rem;
	}

	.table-container {
		padding: 0.5rem;
	}

	th, td {
		padding: 0.2rem;
	}
	
	
	.card-container {
		flex-direction: column;
		align-items: center;
	}

	.card {
		flex: 1 1 100%;
	}
}
</style>
<%@ include file="frontTechnology.jsp"%>
</head>
<body>
	<%@ include file="navigate.jsp"%>

	<section>
		<h1>ELEVATE YOUR RECOVERY</h1>
		<p>Joining the Citadel family is a statement of intent, because after all, we don’t just train champions, we make them. Our membership options are designed to meet the options of our members modern lifestyles, here to meet your needs, goals and ambitions on terms that suit you.</p>

		<div class="container">
			<div class="card-container">
				<!-- Card with Photo -->
				<div class="card">
					<img src="/gym-mgmt/resources/images/full_access.png" class="card-img-top" alt="Cold Plunge Image">
				</div>

				<!-- Card with Description -->
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">FULL ACCESS GYM MEMBERSHIP</h5>
						<p class="card-text">
							Enjoy unlimited access to all gym facilities, including group classes, swimming pool, and sauna. Perfect for those committed to achieving their fitness goals with maximum flexibility.
						</p>
					</div>
				</div>
			</div>

			<div class="card-container">
				<!-- Card with Description -->
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">LIMITED ACCESS GYM MEMBERSHIP</h5>
						<p class="card-text">
							Get access to the gym and selected group classes during off-peak hours. Ideal for those with a flexible schedule looking to stay fit without the peak-time crowds.
						</p>
					</div>
				</div>

				<!-- Card with Photo -->
				<div class="card">
					<img src="/gym-mgmt/resources/images/limited_access.jpg" class="card-img-top" alt="Sauna Image">
				</div>
			</div>

			<div class="card-container">
				<!-- Card with Photo -->
				<div class="card">
					<img src="/gym-mgmt/resources/images/seasonal.jpg" class="card-img-top" alt="Cold Plunge Image">
				</div>

				<!-- Card with Description -->
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">SEASONAL MEMBERSHIP</h5>
						<p class="card-text">
							Perfect for those who want to stay fit during specific seasons or periods. This membership provides full access to gym facilities for a limited time.
						</p>
					</div>
				</div>
			</div>
		</div>

		<div>
			

			<div class="form-container">
				<div class="form" id="form" style="display: none;">
					<h1>Register New Membership</h1>
					<form id="membershipForm">
						<input type="text" name="name" id="name" placeholder="Name" required /><br>
						<input type="number" name="membershipNumber" id="membershipNumber" placeholder="Membership Number" required /><br>
						<input type="date" name="startDate" id="startDate" placeholder="Start Date" required /><br>
						<input type="date" name="endDate" id="endDate" placeholder="End Date" required /><br>
						<input type="text" name="phoneNumber" id="phoneNumber" placeholder="Phone Number" required /><br>
						<button type="button" id="submit">Submit</button>
						<button id="closeForm" type="button">Close</button>
						<!-- Close button -->
						<div id="successMessage" class="success-message">Membership saved successfully!</div>
					</form>
				</div>
			</div>


			<%
			if (session.getAttribute("active").equals("member")) {
			%>

			<div class="table-container">
				<table id="membershipTable">
					<h2>MEMBERSHIP DETAILS</h2>
					<p class="description">
						<strong>Membership numbers 1-100 are assigned to full
							access<br> Memberships 100-200 are assigned to Limited
							access<br> Memberships 200-300 are assigned to Seasonal
							Memberships
						</strong>
					</p>
					<thead>
						<tr>
							<th>ID</th>
							<!-- This will be hidden -->
							<th>Name</th>
							<th>Membership Number</th>
							<th>Start Date</th>
							<th>End Date</th>
							<th>Phone Number</th>
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
			if (session.getAttribute("active").equals("admin")) {
			%>
			<button id="addMembership">Add Membership</button>

			<div class="table-container">
				<table id="membershipTableForAdmin">
					<h2>MEMBERSHIP DETAILS</h2>
					<p class="description">
						<strong>Membership numbers 1-100 are assigned to full
							access<br> Memberships 100-200 are assigned to Limited
							access<br> Memberships 200-300 are assigned to Seasonal
							Memberships
						</strong>
					</p>
					<thead>
						<tr>
							<th>ID</th>
							<!-- This will be hidden -->
							<th>Name</th>
							<th>Membership Number</th>
							<th>Start Date</th>
							<th>End Date</th>
							<th>Phone Number</th>
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

		</div>
		
		<input type="hidden" id="membershipId">
		
		<div class="extra-info">
  <h5>MEMBERSHIP COMMITTEE</h5>
  <p>The membership committee are champions from a range of industries</p>
</div>
	</section>
	<!-- Include jQuery library -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- Include SweetAlert library -->
	<script src="resources/jquery/sweetalert.min.js"></script>
	<!-- Include DataTables library -->
	<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
	<!-- Include membership.js script -->
	<script src="/gym-mgmt/resources/js/membership.js"></script>
	
	
</body>

<footer>
  <h>INTERESTED IN BECOMING A MEMBER?</h>
  <p>LET'S GO</p>
  <p>EMAIL US AT citadel@gmail.com</p>
</footer>
</html>

