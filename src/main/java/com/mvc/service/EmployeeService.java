package com.mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.entity.Employee;
import com.mvc.repo.EmployeeRepository;

@Service
public class EmployeeService {

	private final EmployeeRepository empRepo;

	public EmployeeService(EmployeeRepository empRepo) {
		this.empRepo = empRepo;
	}

	public Employee saveEmployee(Employee employee) {
		return empRepo.save(employee);
	}

	public List<Employee> showAllEmployees() {
		return empRepo.findAll();
	}

	public void deleteEmployee(long id) {
		empRepo.deleteById(id);
	}

	public Employee getEmployeeById(long id) {

		return empRepo.findById(id).orElseThrow();
	}

}
