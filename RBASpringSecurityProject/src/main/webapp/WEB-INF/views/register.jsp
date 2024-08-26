<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="./header.jsp"%>
    
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        html, body {
            height: 100%;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(-45deg, #4158d0, #c850c0, #ffcc70, #ff3c3c);
            background-size: 400% 400%;
            animation: gradientBG 10s ease infinite;
        }
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        ::selection {
            background: #4158d0;
            color: #fff;
        }

        /* Header and Footer Styles */
        header, footer {
            width: 100%;
            background: rgba(0, 0, 0, 0.8);
            color: #fff;
            text-align: center;
            padding: 15px 0;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease;
        }
        footer {
            bottom: 0;
            top: auto;
        }
        header:hover, footer:hover {
            background: rgba(0, 0, 0, 0.9);
            transform: scale(1.02);
        }

        /* Wrapper and Form Styles */
        .wrapper {
            width: 400px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0px 15px 30px rgba(0, 0, 0, 0.2);
            margin-top: 100px; /* Space for the header */
            margin-bottom: 100px; /* Space for the footer */
            overflow: hidden;
            opacity: 0;
            transform: translateY(50px);
            animation: fadeInUp 1s forwards;
        }
        @keyframes fadeInUp {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .wrapper .title {
            font-size: 35px;
            font-weight: 600;
            text-align: center;
            line-height: 100px;
            color: #fff;
            user-select: none;
            border-radius: 15px 15px 0 0;
            background: linear-gradient(-135deg, #c850c0, #4158d0);
        }
        .wrapper form {
            padding: 10px 30px 50px 30px;
        }
        .wrapper form .field {
            height: 50px;
            width: 100%;
            margin-top: 20px;
            position: relative;
        }
        .wrapper form .field input {
            height: 100%;
            width: 100%;
            outline: none;
            font-size: 17px;
            padding-left: 20px;
            border: 1px solid lightgrey;
            border-radius: 25px;
            transition: all 0.3s ease;
        }
        .wrapper form .field input:focus,
        form .field input:valid {
            border-color: #4158d0;
        }
        .wrapper form .field label {
            position: absolute;
            top: 50%;
            left: 20px;
            color: #999999;
            font-weight: 400;
            font-size: 17px;
            pointer-events: none;
            transform: translateY(-50%);
            transition: all 0.3s ease;
        }
        form .field input:focus ~ label,
        form .field input:valid ~ label {
            top: 0%;
            font-size: 16px;
            color: #4158d0;
            background: #fff;
            transform: translateY(-50%);
        }
        form .content {
            display: flex;
            width: 100%;
            height: 50px;
            font-size: 16px;
            align-items: center;
            justify-content: space-around;
        }
        form .content .checkbox {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        form .content input {
            width: 15px;
            height: 15px;
        }
        form .content label {
            color: #262626;
            user-select: none;
            padding-left: 5px;
        }
        form .field input[type="submit"] {
            color: #fff;
            border: none;
            padding-left: 0;
            margin-top: -10px;
            font-size: 20px;
            font-weight: 500;
            cursor: pointer;
            background: linear-gradient(-135deg, #c850c0, #4158d0);
            transition: all 0.3s ease;
        }
        form .field input[type="submit"]:active {
            transform: scale(0.95);
        }
        form .signup-link {
            color: #262626;
            margin-top: 20px;
            text-align: center;
        }
        form .pass-link a,
        form .signup-link a {
            color: #4158d0;
            text-decoration: none;
        }
        form .pass-link a:hover,
        form .signup-link a:hover {
            text-decoration: underline;
        }

        /* Custom styling for the select dropdown */
        .wrapper form .field .custom-select {
            position: relative;
            width: 100%;
            height: 50px;
        }
        .wrapper form .field .custom-select select {
            height: 100%;
            width: 100%;
            padding-left: 20px;
            padding-right: 40px;
            font-size: 17px;
            border: 1px solid lightgrey;
            border-radius: 25px;
            appearance: none;
            outline: none;
            background-color: #fff;
            transition: all 0.3s ease;
            cursor: pointer;
        }
        .wrapper form .field label {
            position: absolute;
            top: 50%;
            left: 20px;
            color: #999999;
            font-weight: 400;
            font-size: 17px;
            pointer-events: none;
            transform: translateY(-50%);
            transition: all 0.3s ease;
            background-color: #fff;
            padding: 0 5px;
            z-index: 1;
        }
        .wrapper form .field .custom-select select:focus ~ label,
        .wrapper form .field .custom-select select:not(:placeholder-shown) ~ label {
            top: -10px;
            font-size: 14px;
            color: #4158d0;
            left: 15px;
            padding: 0 5px;
            background-color: #fff;
        }
        .wrapper form .field .custom-select select:focus,
        .wrapper form .field .custom-select select:not(:placeholder-shown) {
            border-color: #4158d0;
        }
        .wrapper form .field .custom-select::after {
            content: "";
            position: absolute;
            top: 50%;
            right: 20px;
            width: 10px;
            height: 10px;
            background-image: url('data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjNDA0MDQwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMCAxMCI+PHBhdGggZD0iTTUgOWw1LTUgMS0xLTYgNi02LTZsLTEgMSA1IDV6Ii8+PC9zdmc=');
            background-size: 100%;
            background-repeat: no-repeat;
            transform: translateY(-50%);
            pointer-events: none;
        }
        .wrapper form .field .custom-select select option {
            background-color: #fff;
            color: #333;
            font-size: 16px;
            padding: 10px;
        }
        .wrapper form .field .custom-select select option:hover {
            background-color: #f0f0f0;
        }
    
    </style>
</head>
<body>
    <header class="custom-header">
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"> <i class="fa fa-leaf"></i>
					PRODUCT MANAGEMENT
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"><i class="fa fa-bars"></i></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link active" href="dashboard-page">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Services</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Contact</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
    
    <div class="wrapper">
        <div class="title">
            Register
        </div>
        <form action="${pageContext.request.contextPath}/registerUser" method="post">
            <div class="field">
                 <input type="text" name="userName" class="form-control" id="userNameID" value="${user.userName }" aria-describedby="usernameHelp">
                <label>Username</label>
            </div>
            <div class="field">
                <input type="password" name="password" class="form-control" id="passwordID" value="${user.password }">
                <label>Password</label>
            </div>
            <div class="field">
                <div class="custom-select">
                     <select name="role" required>
                        <option ${user.role == 'Select' ? 'selected':'' }>Select</option>
                        <option value="ADMIN" ${user.role == 'ADMIN' ? 'selected':'' }>ADMIN</option>
                        <option value="USER" ${user.role == 'USER' ? 'selected':'' }>USER</option>
                    </select>
                    <label>Role</label>
                </div>
            </div>
            <div class="field">
                <input type="submit" value="Register">
            </div>
            <div class="signup-link">
                Already a member? <a href="${pageContext.request.contextPath}/login-page">Login</a>
            </div>
        </form>
    </div>
    
    <footer>
        <p>&copy; 2024 Your Company. All Rights Reserved.</p>
    </footer>
</body>
</html>
