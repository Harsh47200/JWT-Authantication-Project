package com.RockAndRoleProject.RBASpringSecurityProject.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.RockAndRoleProject.RBASpringSecurityProject.jwtauthantication.JWTAuthanticationFilter;
import com.RockAndRoleProject.RBASpringSecurityProject.pojo.User;
import com.RockAndRoleProject.RBASpringSecurityProject.repository.UserReposiotry;

import jakarta.servlet.Filter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration {
	// UserReposiotry: Used to access user data from the database.
	@Autowired
	private UserReposiotry userRepository;

	// IlleagalAccess: Custom handler for access denied scenarios.
	@Autowired
	private IlleagalAccess illeagalAccess;

	// JWTAuthanticationFilter: Custom filter for JWT-based authentication.
	@Autowired
	private JWTAuthanticationFilter jwtAuthanticationFilter;

	// Retrieves the user by username from the repository.
	// Throws an exception if the user is not found.
	// Builds and returns a UserDetails object with the user’s information.
	@Bean
	UserDetailsService userDetailsService() {
		return username -> {
			User users = userRepository.getUserByUserName(username);
			System.out.println(users);
			if (users == null) {
				throw new UsernameNotFoundException("User not found with this username: " + username);
			}
			return (UserDetails) org.springframework.security.core.userdetails.User.withUsername(users.getUserName())
					.password(users.getPassword()).roles(users.getRole()).build();
		};
	}

	// ->Configures the security filter chain:
	// -> Disables CSRF protection
	// -> Sets authorization rules:
	// -> Permits access to specified endpoints.
	// ->Requires authentication for other requests.
	// ->Configures form login:
	// ->Specifies the login page and processing URL.
	// ->Sets up a failure handler.
	// ->Configures logout:
	// ->Specifies the logout URL and success redirect URL.
	// ->Sets custom access denied handling with IlleagalAccess.
	// ->Configures session management to be stateless (no session will be created
	// or used).
	// ->Adds a custom JWT authentication filter before the
	// UsernamePasswordAuthenticationFilter.
	// ->Returns the configured SecurityFilterChain
	@Bean
	SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		http.csrf(csrf -> csrf.disable()).authorizeHttpRequests(auth -> auth
				.requestMatchers("/login-page", "/auth/login", "/register-page", "/dashboard-page", "/dashboard",
						"/registerUser", "/WEB-INF/error/**", "/error", "/error/403", "/WEB-INF/views/**")
				.permitAll().requestMatchers("/allProducts").hasAnyRole("ADMIN", "USER")
				.requestMatchers("/products/**", "/addProduct").hasRole("ADMIN").anyRequest().authenticated())
				.formLogin(form -> form.loginPage("/login").loginProcessingUrl("/login")
						.failureHandler(authenticationFailureHandler()).permitAll())
				.logout(logout -> logout.logoutUrl("/logout").logoutSuccessUrl("/login-page?logout").permitAll())
				.exceptionHandling(exception -> exception.accessDeniedHandler(illeagalAccess))
				.sessionManagement(session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
				.addFilterBefore(jwtAuthanticationFilter, UsernamePasswordAuthenticationFilter.class);

		return http.build();

	}

	// Uses SimpleUrlAuthenticationFailureHandler to redirect to the login page with
	// an error query parameter when authentication fails
	@Bean
	AuthenticationFailureHandler authenticationFailureHandler() {
		SimpleUrlAuthenticationFailureHandler failureHandler = new SimpleUrlAuthenticationFailureHandler();
		failureHandler.setDefaultFailureUrl("/login?error"); // Redirect to login page with error query param
		return failureHandler;
	}

	// Uses BCryptPasswordEncoder to hash and verify passwords
	@Bean
	PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	// Uses the AuthenticationConfiguration to obtain the AuthenticationManager for
	// managing authentication processes
	@Bean
	AuthenticationManager authenticationManager(AuthenticationConfiguration builder) throws Exception {
		return builder.getAuthenticationManager();
	}
}
