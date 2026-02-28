<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

<style>

/* ===== Background ===== */
body{
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(135deg,#667eea,#764ba2);
    margin:0;
    padding:40px;
}

/* ===== Card ===== */
.container{
    max-width:550px;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0 10px 25px rgba(0,0,0,0.25);
}

/* ===== Heading ===== */
h2{
    text-align:center;
    color:#444;
    margin-bottom:25px;
}

/* ===== Form ===== */
form{
    display:flex;
    flex-direction:column;
}

label{
    font-weight:bold;
    margin-top:12px;
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

/* ===== Buttons ===== */
button{
    margin-top:20px;
    padding:12px;
    border:none;
    border-radius:6px;
    background:#f39c12;
    color:white;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    background:#d68910;
}

/* ===== Back Link ===== */
.back{
    text-align:center;
    margin-top:15px;
}

.back a{
    text-decoration:none;
    background:#667eea;
    color:white;
    padding:10px 18px;
    border-radius:6px;
    transition:0.3s;
}

.back a:hover{
    background:#4b5bdc;
}

</style>

</head>
<body>

<div class="container">

<h2>Update Employee Details ✏️</h2>

<form action="updateemployee" method="post">

    <label>Employee ID</label>
    <input type="text" name="id" value="${employee.id}" readonly>

    <label>Name</label>
    <input type="text" name="name" value="${employee.name}" required>

    <label>Role</label>
    <input type="text" name="role" value="${employee.role}" required>

    <label>Salary</label>
    <input type="number" name="salary" value="${employee.salary}" required>

    <button type="submit"
        onclick="return confirm('Save changes to this employee?')">
        Update Employee
    </button>

</form>

<div class="back">
    <a href="show-all">⬅ Back to Employee List</a>
</div>

</div>

</body>
</html>