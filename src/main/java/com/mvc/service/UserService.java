package com.mvc.service;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.mvc.entity.User;
import com.mvc.repo.UserRepo;

@Service
public class UserService {

	private final PasswordEncoder passwordEncoder;
	private final UserRepo userRepo;

	public UserService(PasswordEncoder passwordEncoder, UserRepo userRepo) {
		super();
		this.passwordEncoder = passwordEncoder;
		this.userRepo = userRepo;
	}

	public User addEmployee(User user) {
		User existingUser = userRepo.findByUsername(user.getUsername());

		if (existingUser != null) {
			throw new RuntimeException("Username already exists");
		}
		 user.setPassword(passwordEncoder.encode(user.getPassword()));
		return userRepo.save(user);
	}

	public User findByUsername(String username) {
		return userRepo.findByUsername(username);

	}

}
