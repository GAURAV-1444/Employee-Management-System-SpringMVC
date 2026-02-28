<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>

<style>

/* ===== Reset ===== */
*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* ===== Background ===== */
body{
	height:100vh;
	display:flex;
	justify-content:center;
	align-items:center;
	background:linear-gradient(135deg,#667eea,#764ba2);
}

/* ===== Card ===== */
.container{
	background:white;
	padding:50px;
	border-radius:15px;
	text-align:center;
	width:420px;
	box-shadow:0 15px 35px rgba(0,0,0,0.25);
	animation:fadeIn 0.8s ease-in-out;
}

/* ===== Heading ===== */
h1{
	color:#333;
	margin-bottom:15px;
	font-size:28px;
}

p{
	color:#666;
	margin-bottom:30px;
	font-size:16px;
}

/* ===== Button ===== */
.btn{
	text-decoration:none;
	background:#667eea;
	color:white;
	padding:12px 28px;
	border-radius:25px;
	font-size:16px;
	font-weight:bold;
	transition:0.3s;
	display:inline-block;
}

.btn:hover{
	background:#764ba2;
	transform:scale(1.05);
	box-shadow:0 5px 15px rgba(0,0,0,0.3);
}

/* ===== Animation ===== */
@keyframes fadeIn{
	from{
		opacity:0;
		transform:translateY(30px);
	}
	to{
		opacity:1;
		transform:translateY(0);
	}
}

</style>

</head>

<body>

<div class="container">

	<h1>Welcome to Employee Management System 🚀</h1>

	<p>
		Spring Boot MVC Application with Login, Dashboard,
		and Employee CRUD Operations.
	</p>

	<a href="loginpage" class="btn">Go to Login</a>

</div>

</body>
</html>