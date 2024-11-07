<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration Form</title>

<style>
body {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

.container {
	width: 100%;
	max-width: 500px;
	margin: 50px auto;
	background-color: #fff;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
}

h1 {
	text-align: center;
	color: #333;
}

form {
	width: 100%;
}

.form-group {
	display: flex;
	flex-direction: column;
	margin-bottom: 15px;
}

label {
	margin-bottom: 5px;
	font-weight: bold;
	color: #555;
}

input[type="text"], input[type="password"] {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
}

input[type="submit"] {
	width: 100%;
	padding: 12px;
	margin-bottom: 30px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	font-size: 18px;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>

</head>
<body>
	<div class="container">
		<h1>User Registration Form</h1>
		<form action="<%=request.getContextPath()%>/register" method="post">
			<div class="form-group">
				<label for="firstName">First Name</label> <input type="text"
					id="firstName" name="firstName" required>
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label> <input type="text"
					id="lastName" name="lastName" required>
			</div>
			<div class="form-group">
				<label for="username">Username</label> <input type="text"
					id="username" name="username" required>
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="address">Address</label> <input type="text" id="address"
					name="address">
			</div>
			<div class="form-group">
				<label for="contact">Contact No</label> <input type="text"
					id="contact" name="contact">
			</div>
			<input type="submit" value="Register">
		</form>
	</div>
</body>
</html>