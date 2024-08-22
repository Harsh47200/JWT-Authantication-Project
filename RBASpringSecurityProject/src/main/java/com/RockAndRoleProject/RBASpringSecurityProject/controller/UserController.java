package com.RockAndRoleProject.RBASpringSecurityProject.controller;

import java.io.IOException;
import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.RockAndRoleProject.RBASpringSecurityProject.jwtauthantication.JWTHelper;
import com.RockAndRoleProject.RBASpringSecurityProject.pojo.User;
import com.RockAndRoleProject.RBASpringSecurityProject.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

//@Controller meaning it handles HTTP requests and returns views
@Controller
public class UserController {

	// UserService: Service for user-related operations
	@Autowired
	private UserService userService;

	// JWTHelper: Helper class for handling JWTs
	@Autowired
	private JWTHelper jwtHelper;

	// PasswordEncoder: Encoder for user passwords
	@Autowired
	private PasswordEncoder passwordEncoder;

	// UserDetailsService: Service for loading user details
	@Autowired
	private UserDetailsService userDetailsService;

	// AuthenticationManager: Manages authentication
	@Autowired
	private AuthenticationManager authenticationManager;

	// Returns the name of the view register.jsp for user registration.
	@GetMapping("/register-page")
	public String register() {
		return "register";
	}

	// Returns the name of the view login.jsp for user login.
	@GetMapping("/login-page")
	public String logIn() {
		return "login";
	}

	// Returns the name of the view dashboard.jsp for the dashboard page.
	@GetMapping("/dashboard-page")
	public String dashboard(Model model) {
		return "dashboard";
	}

	// It handles login authentication
	@PostMapping("/auth/login")
	// @RequestBody User user: Binds the request body to the User object
	public ResponseEntity<String> loginAuth(@RequestBody User user) {
	    try {
	        // Validate that both username and password are provided
	        if (isBlank(user.getUserName()) || isBlank(user.getPassword())) {
	            return new ResponseEntity<>("Username and password cannot be blank", HttpStatus.BAD_REQUEST);
	        }

	        // Authenticate the user
	        doAuthenticate(user.getUserName(), user.getPassword());

	        // Load user details and generate a JWT token
	        UserDetails userDetails = userDetailsService.loadUserByUsername(user.getUserName());
	        String token = jwtHelper.generateToken(userDetails);

	        return new ResponseEntity<>(token, HttpStatus.OK);

	    } catch (BadCredentialsException e) {
	        return new ResponseEntity<>("Invalid Username or Password", HttpStatus.UNAUTHORIZED);
	    } catch (Exception e) {
	        return new ResponseEntity<>("An error occurred: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
	    }
	}

	private boolean isBlank(String value) {
	    return value == null || value.trim().isEmpty();
	}


	
	private void doAuthenticate(String userName, String password) {
	    try {
	        authenticationManager.authenticate(
	            new UsernamePasswordAuthenticationToken(userName, password)
	        );
	    } catch (BadCredentialsException e) {
	        throw new BadCredentialsException("Invalid Username or Password!");
	    }
	}



	@PostMapping("/registerUser")
	public String registerUser(@ModelAttribute User user, Model model) {
	    StringBuilder errorMsg = new StringBuilder();
	    boolean errorFlag = false;

	    if (user == null || user.getUserName() == null || user.getUserName().trim().isEmpty()) {
	        errorMsg.append("<li>Please enter UserName</li>");
	        errorFlag = true;
	    } else if (userService.loadUserByUsername(user.getUserName()) != null) {
	        errorMsg.append("<li>UserName already exists.</li>");
	        errorFlag = true;
	    }

	    if (user == null || user.getPassword() == null || user.getPassword().trim().isEmpty()) {
	        errorMsg.append("<li>Please enter Password</li>");
	        errorFlag = true;
	    }

	    if (user == null || user.getRole() == null || "Select".equals(user.getRole())) {
	        errorMsg.append("<li>Please select at least one Role.</li>");
	        errorFlag = true;
	    }

	    if (errorFlag) {
	        model.addAttribute("error", errorMsg.toString());
	        model.addAttribute("user", user);
	        return "register";
	    }

	    user.setPassword(passwordEncoder.encode(user.getPassword()));
	    userService.registerUser(user);
	    return "redirect:/login-page?success";
	}



	@GetMapping("/dashboard")
	public String showDashboard(@RequestParam("Authorization") String token, Model model, HttpServletRequest request)
	        throws IOException {
	    
	    String decodedToken = new String(Base64.getDecoder().decode(token));
	    String userName = jwtHelper.getUsernameFromToken(decodedToken);
	    User user = userService.loadUserByUsername(userName);
	    UserDetails userDetails = userDetailsService.loadUserByUsername(userName);
	    
	    if (jwtHelper.validateToken(decodedToken, userDetails)) {
	        System.out.println("Token validated");

	        String pageHeading = "USER".equals(user.getRole()) ? "User Dashboard" 
	                         : "ADMIN".equals(user.getRole()) ? "Admin Dashboard" 
	                         : "";
	        
	        model.addAttribute("userName", userName);
	        model.addAttribute("pageHeading", pageHeading);
	        return "productlist";
	    }

	    return "redirect:/login-page";
	}

}
