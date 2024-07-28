<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Login - GYM Mgmt</title>
<%@ include file="frontTechnology.jsp"%>
<link rel="stylesheet" href="resources/css/login.css">
<link rel="stylesheet" href="resources/css/sweetalert.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

<style>
.toggle-password {
	position: absolute;
	top: 40%;
	right: .5rem;
	cursor: pointer;
	user-select: none;
}

body {
	margin: 0;
	font-family: Arial, sans-serif;
}

.navbar {
	overflow: hidden;
	background-color: #333;
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1;
}

.navbar a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.navbar a:hover {
	background: #ddd;
	color: black;
}

.main {
	padding: 16px;
	margin-top: 50px;
}

.login-page {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form {
	background: #f7f7f7;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	width: 300px;
	text-align: center;
}

.form h1 {
	margin-bottom: 20px;
	color: #333;
}

.form input[type="text"],
.form input[type="password"] {
	width: calc(100% - 24px);
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.form input[type="button"] {
	background-color: #008CBA;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 10px;
}

.form input[type="button"]:hover {
	background-color: #005f73;
}
</style>
</head>
<body>

<section id="header">
	<%@ include file="header.jsp"%>
</section>

<section id="main-body">
	<div class="login-page">
		<div class="form">
			<h1>Admin Login</h1>
			<form>
				<input type="text" name="username" id="username" placeholder="Username" />
				<div style="position:relative;">
					<input type="password" name="password" id="password" placeholder="Password" />
					<i class="far fa-eye toggle-password" id="togglePassword"></i>
				</div>
				<input type="button" value="Login" id="login" />
					
			</form>
		</div>
	</div>
</section>

<script src="resources/jquery/sweetalert.min.js"></script>
<script src="resources/js/adminLogin.js"></script>

</body>
</html>
