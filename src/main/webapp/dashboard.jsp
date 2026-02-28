<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<style>

/* ===== Page Background ===== */
body{
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(135deg,#667eea,#764ba2);
    margin:0;
    padding:40px;
}

/* ===== Card Container ===== */
.container{
    max-width:600px;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0 10px 25px rgba(0,0,0,0.25);
}

/* ===== Heading ===== */
h1{
    text-align:center;
    color:#444;
    margin-bottom:25px;
}

/* ===== Form Styling ===== */
form{
    display:flex;
    flex-direction:column;
}

label{
    margin-top:10px;
    font-weight:bold;
    color:#555;
}

input{
    padding:10px;
    margin-top:5px;
    border-radius:6px;
    border:1px solid #ccc;
    font-size:15px;
}

input:focus{
    outline:none;
    border-color:#667eea;
    box-shadow:0 0 5px rgba(102,126,234,0.5);
}

/* ===== Button ===== */
button{
    margin-top:20px;
    padding:12px;
    border:none;
    border-radius:6px;
    background:#2ecc71;
    color:white;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    background:#27ae60;
}

/* ===== Links ===== */
.links{
    text-align:center;
    margin-top:20px;
}

.links a{
    text-decoration:none;
    background:#667eea;
    color:white;
    padding:10px 18px;
    border-radius:6px;
    margin:5px;
    display:inline-block;
    transition:0.3s;
}

.links a:hover{
    background:#4b5bdc;
}

</style>

</head>
<body>

<div class="container">

<h1>Hello👋<br>${key}<br>Welcome to Dashboard</h1>

<form action="addemployee" method="post">

    <label>Employee Name</label>
    <input type="text" name="name" required>

    <label>Role</label>
    <input type="text" name="role" required>

    <label>Salary</label>
    <input type="number" name="salary" required>

    <button type="submit"
        onclick="return confirm('Add this employee?')">
        Add Employee
    </button>

</form>

<div class="links">
    <a href="show-all">View Employees</a>
</div>
<div class="links">
    <a href="index.jsp">Home</a>
</div>

</div>

</body>
</html>