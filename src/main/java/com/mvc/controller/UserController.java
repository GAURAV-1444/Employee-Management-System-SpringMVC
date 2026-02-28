package com.mvc.controller;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.entity.Employee;
import com.mvc.entity.User;
import com.mvc.service.EmployeeService;
import com.mvc.service.UserService;

@Controller
public class UserController {

	private String username;
	private final UserService userService;
	private final EmployeeService empService;
	private final PasswordEncoder passwordEncoder;

	public UserController(UserService userService, EmployeeService empService, PasswordEncoder passwordEncoder) {

		this.userService = userService;
		this.empService = empService;
		this.passwordEncoder = passwordEncoder;
	}

	@GetMapping("/loginpage")
	public String login() {
		return "loginpage";
	}

	@PostMapping("/addemployee")
	public String addEmployee(@ModelAttribute Employee employee) {
		System.out.println(employee);
		Employee emp = empService.saveEmployee(employee);
		System.out.println("Employee From DataBase --> " + emp);
		return "redirect:/show-all";
	}

	@GetMapping("/show-all")
	public String showAllEmployees(Model m) {
		List<Employee> emps = empService.showAllEmployees();
		m.addAttribute("employees", emps);
		return "show";
	}

	@GetMapping("/updatebyid")
	public String updateEmployee(@RequestParam int id, Model m) {

		Employee emp = empService.getEmployeeById(id);
		m.addAttribute("employee", emp);

		return "update";
	}

	@PostMapping("/updateemployee")
	public String updateEmployeeData(@ModelAttribute Employee employee) {

		empService.saveEmployee(employee); // save() works for update also
		return "redirect:/show-all";
	}

	@GetMapping("/deletebyid")
	public String deleteEmployee(@RequestParam int id) {

		empService.deleteEmployee(id);
		return "redirect:/show-all";
	}

	@PostMapping("/dashboardpage")
	public String validateLogin(@RequestParam String username, @RequestParam String password, Model m) {

		User user = userService.findByUsername(username);

		if (user != null && passwordEncoder.matches(password, user.getPassword())) {
			this.username = user.getName();
			System.out.println("Login Success : " + this.username);
			m.addAttribute("key", user.getName());
			return "dashboard";
		} else {
			System.out.println("Invalid Login");
			m.addAttribute("error", "Invalid Username or Password");
			return "loginpage";
		}
	}

	@GetMapping("/register")
	public String registeUser() {
		return "userregister";
	}

	@PostMapping("/adduser")
	public String addUser(@ModelAttribute User user, Model m) {

		try {
			userService.addEmployee(user);
			return "loginpage";

		} catch (RuntimeException e) {
			m.addAttribute("error", e.getMessage());
			return "userregister";
		}
	}

	@GetMapping("/dashboard")
	public String returnDashboard(Model m) {
		m.addAttribute("key", this.username);
		return "dashboard";
	}

}
