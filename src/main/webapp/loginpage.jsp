<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
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

/* ===== Login Card ===== */
.login-container {
    background: white;
    padding: 40px;
    width: 380px;
    border-radius: 15px;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
    animation: fadeIn 0.8s ease-in-out;
}

/* ===== Title ===== */
.login-title {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

/* ===== Error Message ===== */
.error-msg {
    background: #ffe6e6;
    color: #cc0000;
    padding: 10px;
    border-radius: 6px;
    text-align: center;
    margin-bottom: 15px;
    font-size: 14px;
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

/* Left icon */
.left-icon {
    position: absolute;
    left: 15px;
    top: 50%;
    transform: translateY(-50%);
    color: #777;
    font-size: 18px;
    pointer-events: none; 
}

/* Eye icon */
.eye {
    position: absolute;
    right: 15px;
    top: 50%;
    transform: translateY(-50%);
    cursor: pointer;
    pointer-events: auto;
    color: #777;
    font-size: 18px;
}
.eye:hover {
    color: #667eea;
}

/* ===== Button ===== */
.login-btn {
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

.login-btn:hover {
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
@keyframes fadeIn {
    from {
        opacity: 0;
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

<div class="login-container">

    <h2 class="login-title">Login</h2>

    <!-- ✅ Error Message -->
    <c:if test="${not empty error}">
        <div class="error-msg">
            ${error}
        </div>
    </c:if>

    <form action="dashboardpage" method="post" autocomplete="off">

        <!-- Username -->
        <div class="input-group">
            <i class="ri-user-3-line left-icon"></i>
            <input type="text"
                   name="username"
                   placeholder="User Name"
                   required>
        </div>

        <!-- Password -->
        <div class="input-group">
            <i class="ri-lock-2-line left-icon"></i>
            <input type="password"
                   id="login-pass"
                   name="password"
                   placeholder="Password"
                   required
                   >
            <i class="ri-eye-off-line eye"
               id="login-eye"></i>
        </div>

        <button type="submit" class="login-btn">Login</button>

    </form>

    <div class="extra">
        New user? <a href="register">Register</a>
    </div>

    <div class="extra">
        Return to <a href="index.jsp">Home</a>
    </div>

</div>

<script>
    const passwordInput = document.getElementById("login-pass");
    const eyeIcon = document.getElementById("login-eye");

    eyeIcon.addEventListener("click", function () {

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