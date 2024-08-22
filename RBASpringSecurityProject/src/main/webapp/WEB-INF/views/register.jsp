<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="./header.jsp"%>
    <style>
		*{
		  margin: 0;
		  padding: 0;
		  box-sizing: border-box;
		  font-family: 'Poppins', sans-serif;
		}
		html,body{
		  display: grid;
		  height: 100%;
		  width: 100%;
		  place-items: center;
		  background: #f2f2f2;
		  /* background: linear-gradient(-135deg, #c850c0, #4158d0); */
		}
		::selection{
		  background: #4158d0;
		  color: #fff;
		}
		.wrapper{
		  width: 380px;
		  background: #fff;
		  border-radius: 15px;
		  box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
		}
		.wrapper .title{
		  font-size: 35px;
		  font-weight: 600;
		  text-align: center;
		  line-height: 100px;
		  color: #fff;
		  user-select: none;
		  border-radius: 15px 15px 0 0;
		  background: linear-gradient(-135deg, #c850c0, #4158d0);
		}
		.wrapper form{
		  padding: 10px 30px 50px 30px;
		}
		.wrapper form .field{
		  height: 50px;
		  width: 100%;
		  margin-top: 20px;
		  position: relative;
		}
		.wrapper form .field input{
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
		form .field input:valid{
		  border-color: #4158d0;
		}
		.wrapper form .field label{
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
		form .field input:valid ~ label{
		  top: 0%;
		  font-size: 16px;
		  color: #4158d0;
		  background: #fff;
		  transform: translateY(-50%);
		}
		form .content{
		  display: flex;
		  width: 100%;
		  height: 50px;
		  font-size: 16px;
		  align-items: center;
		  justify-content: space-around;
		}
		form .content .checkbox{
		  display: flex;
		  align-items: center;
		  justify-content: center;
		}
		form .content input{
		  width: 15px;
		  height: 15px;
		  background: red;
		}
		form .content label{
		  color: #262626;
		  user-select: none;
		  padding-left: 5px;
		}
		form .content .pass-link{
		  color: "";
		}
		form .field input[type="submit"]{
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
		form .field input[type="submit"]:active{
		  transform: scale(0.95);
		}
		form .signup-link{
		  color: #262626;
		  margin-top: 20px;
		  text-align: center;
		}
		form .pass-link a,
		form .signup-link a{
		  color: #4158d0;
		  text-decoration: none;
		}
		form .pass-link a:hover,
		form .signup-link a:hover{
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
		  padding-right: 40px; /* Space for the arrow */
		  font-size: 17px;
		  border: 1px solid lightgrey;
		  border-radius: 25px;
		  appearance: none; /* Remove default arrow */
		  outline: none;
		  background-color: #fff;
		  transition: all 0.3s ease;
		  cursor: pointer;
		}

		/* Label styling */
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
		  z-index: 1; /* Ensures the label is above the select element */
		}

		/* Move label when select is focused or has a value */
		.wrapper form .field .custom-select select:focus ~ label,
		.wrapper form .field .custom-select select:not(:placeholder-shown) ~ label {
		  top: -10px;
		  font-size: 14px;
		  color: #4158d0;
		  left: 15px;
		  padding: 0 5px;
		  background-color: #fff; /* Keeps the label from overlapping the select border */
		}

		/* Change border color on focus */
		.wrapper form .field .custom-select select:focus,
		.wrapper form .field .custom-select select:not(:placeholder-shown) {
		  border-color: #4158d0;
		}

		/* Style for the custom arrow */
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

		/* Custom dropdown styling */
		.wrapper form .field .custom-select select option {
		  background-color: #fff;
		  color: #333;
		  font-size: 16px;
		  padding: 10px;
		}

		/* Optional: Hover effect for options */
		.wrapper form .field .custom-select select option:hover {
		  background-color: #f0f0f0;
		}
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="title">
            Register
        </div>
        <form action="${pageContext.request.contextPath}/registerUser" method="post">
            <c:if test="${error != null}">
                <div class="alert alert-danger" role="alert">
                    <ul>${error}</ul>
                </div>
            </c:if>
            <div class="field">
                <input type="text" name="userName" id="userNameID" value="${user.userName}" required>
                <label for="userNameID">Enter your username</label>
            </div>
            <div class="field">
                <input type="password" name="password" id="passwordID" value="${user.password}" required>
                <label for="passwordID">Enter your password</label>
            </div>
			<div class="field">
			  <div class="custom-select">
			    <!--<label for="roleSelect">Role</label>-->
			    <select id="roleSelect" name="role" required>
			      <option value="" disabled selected>Select</option>
			      <option value="ADMIN">ADMIN</option>
			      <option value="USER">USER</option>
			    </select>
			  </div>
			</div>
<br>
            
			<div class="field">
			              <input type="submit" value="SignIn">
			           </div>
            <div class="signup-link">
                Already have an account? <a href="${pageContext.request.contextPath}/login-page">Login</a>
            </div>
        </form>
    </div>
</body>


</html>

