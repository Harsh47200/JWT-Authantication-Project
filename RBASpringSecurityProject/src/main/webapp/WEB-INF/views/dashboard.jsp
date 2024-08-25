<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Management Dashboard</title>

<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Montserrat', sans-serif;
	background-color: #111;
	color: white;
	text-align: center;
	margin: 0;
	padding: 0;
	min-height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

header {
	padding: 20px;
	background-color: #4b4b4b;
	font-size: 1.5em;
	font-weight: bold;
	position: fixed;
	width: 100%;
	top: 0;
	left: 0;
	z-index: 1000;
}

footer {
	margin-top: 40px;
	background-color: #333;
	padding: 20px;
	font-size: 0.9em;
	color: #ccc;
	position: fixed;
	width: 100%;
	bottom: 0;
	left: 0;
}

.description {
	margin: 80px 0 20px 0;
	/* Adjusted margin-top for space below fixed header */
	font-size: 1.2em;
	color: #fff;
}

.waviy {
	display: inline-block;
	overflow: hidden; /* Hide anything outside the bounds of the element */
}

.waviy span {
	display: inline-block;
	font-size: 20px; /* Adjust font size as needed */
	color: #fff;
	text-transform: uppercase;
	animation: flip 2s infinite;
	animation-delay: calc(.2s * var(--i, 1)); /* Default to 1 if not set */
	margin-top: 40px;
}

@
keyframes flip { 0%, 80% {
	transform: rotateY(360deg);
}

}
.buttons {
	margin: 20px 0;
}

button {
	background-color: #ff6b6b;
	border: none;
	color: white;
	padding: 15px 30px;
	margin: 10px;
	font-size: 1em;
	cursor: pointer;
	border-radius: 5px;
	transition: all 0.3s ease;
}

button:hover {
	background-color: #ff4757;
	transform: scale(1.1);
}

.photos {
	display: flex;
	justify-content: center;
	margin: 20px 0;
}

.photo-frame {
	margin: 0 15px;
	border: 5px solid #fff;
	border-radius: 10px;
	overflow: hidden;
	width: 120px;
	height: 150px;
}

.photo-frame img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.rights {
	margin: 20px 0;
	text-align: left;
	padding: 0 10%;
}

.rights p {
	font-size: 1.1em;
	margin: 10px 0;
}

@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}
}
</style>
</head>
<body style="background-image: url('Admin.jpg');">
	<header>
		<div>Product Management System</div>
	</header>

	<div class="description">
		<p class="waviy">
			<span>"At the heart of every product person, there’s a desire
				to make someone’s life easier or simpler. If we listen to the
				customer and give them what they need, they’ll reciprocate with love
				and loyalty to your brand."</span>
		</p>
		<p class="waviy">
			<span>"The biggest product management challenge is resource
				alignment. Team sizes are always changing and frequently lopsided.
				Some weeks you have plenty of design bandwidth and no iOS; others,
				you have no design and all iOS. Having a deep backlog of
				well-prioritized projects is key to operating an efficient team."</span>
		</p>
		<p class="waviy">
			<span>“A great product manager has the brain of an engineer,
				the heart of a designer, and the speech of a diplomat.”</span>
		</p>
		<p class="waviy">
			<span>“People think focus means saying yes to the thing you’ve
				got to focus on. But that’s not what it means at all. It means
				saying no to the hundred other good ideas.”</span>
		</p>
	</div>

	<div class="rights">
		<p>
			<strong>Admin Rights:</strong> Add, Update, Delete Products
		</p>
		<p>
			<strong>User Rights:</strong> View Products
		</p>
	</div>

	<div class="buttons">
		<button onclick="window.location.href='login-page'">Log In</button>
		<button onclick="window.location.href='register-page'">Sign
			Up</button>
	</div>

	<footer>
		<p>&copy; 2024 Product Management System. All Rights Reserved.</p>
	</footer>
</body>
</html>
