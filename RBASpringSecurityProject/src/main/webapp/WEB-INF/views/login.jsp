<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/* CSS Reset */
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
b, u, i, dl, dt, dd, ol, nav ul, nav li, fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
menu, nav, section {
    display: block;
}

ol, ul {
    list-style: none;
    margin: 0;
    padding: 0;
}

blockquote, q {
    quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
    content: '';
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}

/* Main Styles */
a {
    text-decoration: none;
}

.txt-rt {
    text-align: right;
}

.txt-lt {
    text-align: left;
}

.txt-center {
    text-align: center;
}

.float-rt {
    float: right;
}

.float-lt {
    float: left;
}

.clear {
    clear: both;
}

.pos-relative {
    position: relative;
}

.pos-absolute {
    position: absolute;
}

.vertical-base {
    vertical-align: baseline;
}

.vertical-top {
    vertical-align: top;
}

nav.vertical ul li {
    display: block;
}

nav.horizontal ul li {
    display: inline-block;
}

img {
    max-width: 100%;
}

/* Body */
body {
    background: #76b852;
    background: -webkit-linear-gradient(to top, #76b852, #8DC26F);
    background: -moz-linear-gradient(to top, #76b852, #8DC26F);
    background: -o-linear-gradient(to top, #76b852, #8DC26F);
    background: linear-gradient(to top, #76b852, #8DC26F);
    background-size: cover;
    background-attachment: fixed;
    font-family: 'Roboto', sans-serif;
}

h1 {
    font-size: 3em;
    text-align: center;
    color: #fff;
    font-weight: 100;
    text-transform: capitalize;
    letter-spacing: 4px;
}

/* Main Container */
.main-w3layouts {
    padding: 9em 0 1em;
}

.main-agileinfo {
    width: 35%;
    margin: 3em auto;
    background: rgba(0, 0, 0, 0.18);
}

.agileits-top {
    padding: 3em;
}

input[type="text"], input[type="email"], input[type="password"] {
    font-size: 0.9em;
    color: #fff;
    font-weight: 100;
    width: 94.5%;
    display: block;
    border: none;
    padding: 0.8em;
    border: solid 1px rgba(255, 255, 255, 0.37);
    transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
    background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 96%, #fff 4%);
    background-position: -800px 0;
    background-size: 100%;
    background-repeat: no-repeat;
    font-family: 'Roboto', sans-serif;
}

input.email, input.text.w3lpass {
    margin: 2em 0;
}

.text:focus, .text:valid {
    box-shadow: none;
    outline: none;
    background-position: 0 0;
}

.text:focus::-webkit-input-placeholder, .text:valid::-webkit-input-placeholder {
    color: rgba(255, 255, 255, 0.7);
    font-size: .9em;
    transform: translateY(-30px);
    visibility: visible !important;
}

::-webkit-input-placeholder {
    color: #fff;
    font-weight: 100;
}

:-moz-placeholder {
    color: #fff;
}

::-moz-placeholder {
    color: #fff;
}

:-ms-input-placeholder {
    color: #fff;
}

input[type="submit"] {
    font-size: .9em;
    color: #fff;
    background: #76b852;
    border: 1px solid #76b852;
    cursor: pointer;
    padding: 0.9em;
    width: 100%;
    margin: 2em 0;
    letter-spacing: 4px;
    transition: .5s all;
}

input[type="submit"]:hover {
    background: #8DC26F;
}

/* Paragraphs */
.agileits-top p {
    font-size: 1em;
    color: #fff;
    text-align: center;
    letter-spacing: 1px;
    font-weight: 300;
}

.agileits-top p a {
    color: #fff;
    transition: .5s all;
    font-weight: 400;
}

.agileits-top p a:hover {
    color: #76b852;
}

/* Checkbox */
.wthree-text label {
    font-size: 0.9em;
    color: #fff;
    font-weight: 200;
    cursor: pointer;
    position: relative;
}

input.checkbox {
    background: #8DC26F;
    cursor: pointer;
    width: 1.2em;
    height: 1.2em;
}

input.checkbox:before {
    content: "";
    position: absolute;
    width: 1.2em;
    height: 1.2em;
    background: inherit;
}

input.checkbox:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    z-index: 1;
    width: 1.2em;
    height: 1.2em;
    border: 1px solid #fff;
    transition: .4s ease-in-out;
}

input.checkbox:checked:after {
    transform: rotate(-45deg);
    height: .5rem;
    border-color: #fff;
    border-top-color: transparent;
    border-right-color: transparent;
}

.anim input.checkbox:checked:after {
    transform: rotate(-45deg);
    height: .5rem;
    border-color: transparent;
    border-right-color: transparent;
    animation: .4s rippling .4s ease;
    animation-fill-mode: forwards;
}

@keyframes rippling {
    50% {
        border-left-color: #fff;
    }

    100% {
        border-bottom-color: #fff;
        border-left-color: #fff;
    }
}

/* Copyright */
.colorlibcopy-agile {
    margin: 2em 0 1em;
    text-align: center;
}

.colorlibcopy-agile p {
    font-size: .9em;
    color: #fff;
    line-height: 1.8em;
    letter-spacing: 1px;
    font-weight: 100;
}

.colorlibcopy-agile p a {
    color: #fff;
    transition: 0.5s all;
}

.colorlibcopy-agile p a:hover {
    color: #000;
}

/* Bubbles */
.wrapper {
    position: relative;
    overflow: hidden;
}

.colorlib-bubbles {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
}

.colorlib-bubbles li {
    position: absolute;
    list-style: none;
    display: block;
    width: 40px;
    height: 40px;
    background-color: rgba(255, 255, 255, 0.15);
    bottom: -160px;
    animation: square 20s infinite;
    transition-timing-function: linear;
    border-radius: 50%;
}

.colorlib-bubbles li:nth-child(1) {
    left: 10%;
}

.colorlib-bubbles li:nth-child(2) {
    left: 20%;
    width: 80px;
    height: 80px;
    animation-delay: 2s;
    animation-duration: 17s;
}

.colorlib-bubbles li:nth-child(3) {
    left: 25%;
    animation-delay: 4s;
}

.colorlib-bubbles li:nth-child(4) {
    left: 40%;
    width: 60px;
    height: 60px;
    animation-duration: 22s;
    background-color: rgba(255, 255, 255, 0.25);
}

.colorlib-bubbles li:nth-child(5) {
    left: 70%;
}

.colorlib-bubbles li:nth-child(6) {
    left: 50%;
    width: 120px;
    height: 120px;
    animation-delay: 1s;
    animation-duration: 24s;
}

.colorlib-bubbles li:nth-child(7) {
    left: 80%;
    width: 150px;
    height: 150px;
    animation-delay: 3s;
    animation-duration: 18s;
}

.colorlib-bubbles li:nth-child(8) {
    left: 90%;
    width: 60px;
    height: 60px;
    animation-delay: 8s;
    animation-duration: 16s;
}

@keyframes square {
    0% {
        transform: translateY(0) scale(1);
    }

    100% {
        transform: translateY(-1000px) scale(0);
    }
}

</style>
<%@ include file="./header.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function login(event) {
		event.preventDefault();
		var username = document.getElementById('userNameID').value;
		var password = document.getElementById('passwordID').value;

		var xhr = new XMLHttpRequest();
		xhr.open('POST', 'http://localhost:8081/auth/login', true);
		xhr.setRequestHeader('Content-Type', 'application/json');

		xhr.onload = function() {
			if (xhr.status == 200) {
				var token = xhr.responseText;
				if (token) {
					localStorage.setItem('jwtToken', token);
					var encodedToken = btoa(token);
					window.location.href = '/dashboard?Authorization='
							+ encodeURIComponent(encodedToken);
				}
			} else if (xhr.status == 400 || xhr.status == 401) {
				document.getElementById('loginErrorID').style.display = "block";
				document.getElementById('loginErrorID').innerHTML = "<li>"
						+ xhr.responseText + "</li>";
			} else {
				document.getElementById('loginErrorID').style.display = "block";
				document.getElementById('loginErrorID').innerHTML = "<li>Login failed: "
						+ xhr.statusText + "</li>";
			}
		};
		var data = JSON.stringify({
			userName : username,
			password : password
		});
		xhr.send(data);
	}
</script>
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>LOGIN</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<!-- Display login, logout, or success messages -->
				<c:if test="${param.logout != null}">
					<div class="alert alert-success" role="alert">You have been
						logged out successfully.</div>
				</c:if>
				<c:if test="${param.success != null}">
					<div class="alert alert-success" role="alert">User registered
						successfully.</div>
				</c:if>
				<div class="alert alert-danger" id="loginErrorID"
					style="display: none;" role="alert"></div>



				<form id="formID" onsubmit="login(event);">


					<input class="text" style="width: 99.5%;" type="text"
						name="userName" id="userNameID" placeholder="Username" required="">
					<br> <input class="text" style="width: 99.5%;" type="password"
						name="password" placeholder="Password" id="passwordID" required="">

					<input type="submit" value="SIGNIN">
				</form>
				<p>
					Don't have an Account? <a href="/register-page">Register Now!</a>
				</p>
			</div>
		</div>

		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
</body>
</html>
