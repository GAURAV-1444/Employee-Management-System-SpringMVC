<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employees Data</title>

<style>

/* ===== Page Styling ===== */
body{
	font-family: Arial, Helvetica, sans-serif;
	background: linear-gradient(135deg,#667eea,#764ba2);
	margin:0;
	padding:30px;
	color:#333;
}

/* ===== Container ===== */
.container{
	background:white;
	padding:25px;
	border-radius:10px;
	box-shadow:0 8px 20px rgba(0,0,0,0.2);
	max-width:900px;
	margin:auto;
}

/* ===== Heading ===== */
h1{
	text-align:center;
	color:#444;
	margin-bottom:20px;
}

/* ===== Table Styling ===== */
table{
	width:100%;
	border-collapse:collapse;
	margin-top:15px;
}

th{
	background:#667eea;
	color:white;
	padding:12px;
	text-transform:uppercase;
	letter-spacing:1px;
}

td{
	padding:12px;
	text-align:center;
	border-bottom:1px solid #ddd;
}

tr:nth-child(even){
	background:#f5f6fa;
}

tr:hover{
	background:#eaf0ff;
	transition:0.3s;
}

/* ===== Buttons ===== */
button{
	padding:7px 14px;
	border:none;
	border-radius:5px;
	cursor:pointer;
	font-weight:bold;
	transition:0.3s;
}

/* Edit Button */
.edit-btn{
	background:#2ecc71;
	color:white;
}

.edit-btn:hover{
	background:#27ae60;
}

/* Delete Button */
.delete-btn{
	background:#e74c3c;
	color:white;
}

.delete-btn:hover{
	background:#c0392b;
}

/* ===== Navigation Links ===== */
.nav-links{
	margin-top:20px;
	text-align:center;
}

.nav-links a{
	text-decoration:none;
	background:#667eea;
	color:white;
	padding:10px 18px;
	border-radius:6px;
	margin:5px;
	display:inline-block;
	transition:0.3s;
}

.nav-links a:hover{
	background:#4b5bdc;
}

</style>

</head>
<body>

<div class="container">

<h1>All Employees</h1>

<table>
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Role</th>
		<th>Salary</th>
		<th>Actions</th>
	</tr>

	<c:forEach var="e" items="${employees}">
		<tr>
			<td>${e.id}</td>
			<td>${e.name}</td>
			<td>${e.role}</td>
			<td>${e.salary}</td>

			<td>
				<a href="updatebyid?id=${e.id}">
					<button class="edit-btn">Edit</button>
				</a>

				<a href="deletebyid?id=${e.id}">
					<button class="delete-btn"
						onclick="return confirm('Are you sure you want to delete this employee?')">
						Delete
					</button>
				</a>
			</td>
		</tr>
	</c:forEach>
</table>

<div class="nav-links">
	<a href="index.jsp">Home</a>
	<a href="dashboard">Back</a>
</div>

</div>

</body>
</html>