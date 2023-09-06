<%@page import="in.fssa.productprice.model.UserEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Style for the page header */
h1 {
    text-align: center;
    margin: 20px 0;
}

/* Style for the form container */
form {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

/* Style for the form labels and input fields */
label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
}

input[type="text"],
input[type="number"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* Style for the submit button */
button[type="submit"] {
    display: block;
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}

/* Style for disabled input fields */
input[disabled] {
    background-color: #eee;
    color: #666;
    cursor: not-allowed;
}

</style>
</head>
<body>

 <h1> Update user </h1>
<% 

		UserEntity user = (UserEntity) request.getAttribute("editUser");
	
	%>
	
	<form action="edit?id=<%=user.getId() %>" method = "post">

       <input type="hidden" name="id" value="<%=user.getId() %>">
		<label> Name : <input type="text" name="name" required value=<%= user.getName() %>> </label>
		<label> Email : <input type="text" name="email" disabled value=<%= user.getEmail() %>> </label>
		<label> Phone number : <input type="number" name="phoneNumber" disabled value=<%= user.getPhoneNumber() %>> </label>
		<label> Password : <input type="password" name="password" required value=<%=user.getPassword() %>> </label>
		
		
		<button type="submit"> Submit </button>
		
	</form>

</body>
</html>