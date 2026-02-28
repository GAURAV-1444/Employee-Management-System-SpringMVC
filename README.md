# 👨‍💼 Employee Management System (Spring Boot + Spring MVC)

## 🚀 Project Overview

The **Employee Management System (EMS)** is a web-based CRUD application developed using **Spring Boot**, **Spring MVC**, and **Spring Data JPA**.  
This project demonstrates real-world enterprise backend development concepts including layered MVC architecture, database integration, and user authentication.

The system enables administrators and users to manage employee records efficiently through secure form-based interactions and structured backend processing.

The application supports employee lifecycle management such as registration, record maintenance, updates, and deletion using a clean MVC design pattern.

---

## 🎯 Key Features

* ✅ User Registration & Login System
* ✅ Employee CRUD Operations
* ✅ Add, Update, View & Delete Employees
* ✅ Form Validation & Error Handling
* ✅ Database Integration using JPA/Hibernate
* ✅ Layered MVC Architecture
* ✅ DAO/Repository Pattern Implementation
* ✅ Server-side Authentication Validation
* ✅ JSP-based Dynamic Views

---

## 🏗️ Architecture

This project follows a **Layered MVC Architecture**:


Controller → Service → Repository (DAO) → JPA/Hibernate → MySQL Database


### Layers

* **Controller Layer**
  * Handles HTTP requests and navigation between pages.

* **Service Layer**
  * Contains business logic and validation rules.

* **Repository (DAO) Layer**
  * Performs database operations using Spring Data JPA.

* **Entity Layer**
  * Maps Java objects to database tables.

* **View Layer (JSP)**
  * Provides user interface and form handling.

---

## 🛠️ Tech Stack

| Technology        | Usage                 |
|-------------------|-----------------------|
| Java 17           | Core Programming      |
| Spring Boot 2.7.15| Application Framework |
| Spring MVC        | Web Architecture      |
| Spring Data JPA   | ORM & DB Operations   |
| Hibernate         | ORM Implementation    |
| MySQL             | Database              |
| JSP + JSTL        | View Layer            |
| Maven             | Dependency Management |
| Tomcat            | Embedded Server       |

---

## 📂 Project Structure


com.employee
│
├── controller
│ └── EmployeeController.java
│
├── service
│ └── EmployeeService.java
│
├── repository
│ └── EmployeeRepository.java
│
├── entity
│ └── Employee.java
│
└── EmployeeManagementApplication.java


---

## 📸 Application Screenshots

### 🔐 Login Page
![Login Page](images/Login.png)

### 📝 Register Page
![Register Page](images/Register.png)

### 📊 Dashboard
![Dashboard](images/dashboard.png)

### 👨‍💼 Employee List
![Employee List](images/employee.png)

---


## ⚙️ Setup & Installation

### 1️⃣ Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/EmployeeManagementSystem.git
2️⃣ Configure Database

Update application.properties:

spring.datasource.url=jdbc:mysql://localhost:3306/employee_db
spring.datasource.username=YOUR_USERNAME
spring.datasource.password=YOUR_PASSWORD
3️⃣ Run Application

Run the main class:

EmployeeManagementApplication.java

Server starts at:

http://localhost:8080/loginpage
```

##🔐 Authentication Flow

User Registration with validation

Login authentication

Username uniqueness verification

Backend password validation

##📊 Learning Outcomes

This project demonstrates practical understanding of:

Spring MVC Request Flow

Layered Application Architecture

DAO & Service Layer Separation

Spring Data JPA Integration

Form Handling with JSP

Database Connectivity

Backend Authentication Logic


##⭐ Future Enhancements

Spring Security Integration

Role-Based Authentication (Admin/User)

REST API Version

Cloud Deployment (AWS / Render)

##📜 License

This project is developed for learning and academic purposes.