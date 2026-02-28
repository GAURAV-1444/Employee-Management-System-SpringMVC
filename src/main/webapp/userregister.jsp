<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Register</title>

<link
	href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
	rel="stylesheet">

<style>

/* ===== Reset ===== */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* ===== Background ===== */
body {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(135deg, #667eea, #764ba2);
}

/* ===== Card ===== */
.register-container {
	background: white;
	padding: 40px;
	width: 380px;
	border-radius: 15px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
	animation: fadeIn 0.8s ease-in-out;
}
.error-msg {
   /* background: #ffe6e6;*/
    color: #cc0000;
  /*  padding: 10px;
    border-radius: 6px;*/
    text-align: center;
  /*    margin-bottom: 15px;*/
    font-size: 14px;
}

/* ===== Title ===== */
.register-title {
	text-align: center;
	margin-bottom: 25px;
	color: #333;
}

/* ===== Input Group ===== */
.input-group {
	position: relative;
	margin-bottom: 20px;
}

.input-group input {
	width: 100%;
	padding: 12px 45px 12px 45px;
	border-radius: 8px;
	border: 1px solid #ccc;
	font-size: 15px;
}

.input-group input:focus {
	outline: none;
	border-color: #667eea;
	box-shadow: 0 0 5px rgba(102, 126, 234, 0.5);
}

/* Left Icon */
.left-icon {
	position: absolute;
	left: 15px;
	top: 50%;
	transform: translateY(-50%);
	color: #777;
	font-size: 18px;
}

/* Eye Icon */
.eye {
	position: absolute;
	right: 15px;
	top: 50%;
	transform: translateY(-50%);
	cursor: pointer;
	color: #777;
	font-size: 18px;
	pointer-events: auto;
}


/* ===== Button ===== */
.register-btn {
	width: 100%;
	padding: 12px;
	border: none;
	border-radius: 25px;
	background: #667eea;
	color: white;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	transition: 0.3s;
}

.register-btn:hover {
	background: #764ba2;
	transform: scale(1.03);
}

/* ===== Links ===== */
.extra {
	text-align: center;
	margin-top: 15px;
}

.extra a {
	text-decoration: none;
	color: #667eea;
	font-weight: bold;
}

/* ===== Animation ===== */
@
keyframes fadeIn {from { opacity:0;
	transform: translateY(30px);
}

to {
	opacity: 1;
	transform: translateY(0);
}
}
</style>
</head>

<body>

	<div class="register-container">

		<h2 class="register-title">User Registration</h2>



		<form action="adduser" method="post">

			<!-- Name -->
			<div class="input-group">
				<i class="ri-user-line left-icon"></i> <input type="text"
					name="name" placeholder="Full Name" required>
			</div>

			<!-- Email -->
			<div class="input-group">
				<i class="ri-mail-line left-icon"></i> <input type="email"
					name="eMail" placeholder="E-Mail Address" required>
			</div>
			<c:if test="${not empty error}">
				<div class="error-msg">${error}</div>
			</c:if>
			<!-- Username -->
			<div class="input-group">
				<i class="ri-account-circle-line left-icon"></i> <input type="text"
					name="username" placeholder="User Name" required>
			</div>

			<!-- Password -->
			<div class="input-group">
				<i class="ri-lock-2-line left-icon"></i> <input type="password"
					id="register-pass" name="password" placeholder="Password" required>
				<i class="ri-eye-off-line eye" id="register-eye"></i>
			</div>

			<button type="submit" class="register-btn"
				onclick="return confirm('Create this account?')">Register</button>

		</form>

		<div class="extra">
			Already have an account? <a href="loginpage">Login</a>
		</div>

	</div>

	<script>
		const passwordInput = document.getElementById("register-pass");
		const eyeIcon = document.getElementById("register-eye");

		eyeIcon.addEventListener("click", function() {

			if (passwordInput.type === "password") {
				passwordInput.type = "text";
				this.classList.remove("ri-eye-off-line");
				this.classList.add("ri-eye-line");
			} else {
				passwordInput.type = "password";
				this.classList.remove("ri-eye-line");
				this.classList.add("ri-eye-off-line");
			}

		});
	</script>

</body>
</html>