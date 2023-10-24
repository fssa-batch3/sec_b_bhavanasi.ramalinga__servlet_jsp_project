<%@page import="in.fssa.productprice.model.UserEntity"%>
<%@page import="in.fssa.productprice.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>

</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/* Reset default margin and padding */
body, html, h1, h2, h3, p, ul, li {
    margin: 0;
    padding: 0;
}

/* Apply a background color to the body */
body {
    font-family: Arial, sans-serif;
}

/* Center the form on the page */
form {
    max-width: 550px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin-top:100px;
    height:500px;
}

/* Style the form heading */
form h1 {
    font-size: 24px;
    margin-bottom: 20px;
    text-align: center;
}
h3{
display:flex;
justify-content:center;
}
img{

margin-left:30%;
}


/* Style the input fields */
.input-field {
    width: 90%;
    padding: 10px;
    margin-bottom: 10px;
   
    border-radius: 3px;
    font-size: 16px;
}

/* Style the submit button */
.btn-1 {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    font-size: 16px;
}
.main{
display:flex;
justify-content:space-around;
margin-top:80px;
}

/* Style the button container */
.btn-edit {
    text-align: center;
    margin-top: 20px;
}

/* Add some spacing between the profile sections */
.profile {
    margin-bottom: 15px;
}

/* Style the links as buttons */
.main a {
  display: inline-block;
  padding: 10px 20px; /* Adjust padding as needed */
  background-color: #007bff; /* Button background color */
  color: #fff; /* Button text color */
  text-decoration: none; /* Remove underline */
  border: none; /* Remove border */
  cursor: pointer;
  border-radius: 4px; /* Rounded corners */
  margin-right: 10px; /* Add some space between buttons */
}

/* Hover effect */
.main a:hover {
  background-color: #0056b3; /* Change background color on hover */
}
.detail{
margin-top:40px;
text-align: center;
 display: flex;
 flex-direction: column;
 align-items: center;
 
}
.userdetail{
display:flex;
}

</style>
<body>
<jsp:include page="user_header.jsp" />
 <form>
	<div class="card">
		<img src="https://iili.io/JHsh1Np.png"  alt="Avatar" style="width:200px" >
		<%
		UserEntity user = (UserEntity) request.getAttribute("user");

			if (user != null) {
		%>
		<div class="detail">
		<div class="userdetail">
		<h3>Name:</h3><h3><%=user.getName()%></h3>
		</div>
		<div class="userdetail">
	<h3>Email:</h3>	<h3 class="title"><%=user.getEmail()%></h3>
	</div>
	<div class="userdetail">
		<h3>PhoneNumber:</h3><h3><%=user.getPhoneNumber()%></h3>
		</div>
		<div class="userdetail">
		<h3>Role:</h3><h3><%=user.getRole()%></h3>
		</div>
		</div>
		<div class="main">
		<a href="logout/user?id=${requestScope.userDetails.getId()}"> Logout  </a>
		
		
		<a href="user/edit?id=<%= user.getId() %>">Edit Profile</a>

		
	</div>
	</div>
	  <%
	  } else {
	%>
	<p>User not found.</p>
	<%
	}
	%>


</body>
</html>
</body>
</html>