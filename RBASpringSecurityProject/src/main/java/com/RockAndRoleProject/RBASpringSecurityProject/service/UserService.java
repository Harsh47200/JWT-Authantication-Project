package com.RockAndRoleProject.RBASpringSecurityProject.service;

import com.RockAndRoleProject.RBASpringSecurityProject.pojo.User;

public interface UserService {
	// new user register
	public User registerUser(User user);

	// Retrieves a User object from the database by username.
	public User loadUserByUsername(String userName);
}
