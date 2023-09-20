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
    width: 80%;
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
		
				
		<% String errorMsg = (String) request.getAttribute("errorMessage"); %>


		<% if(errorMsg != null && user!=null) { %>
		
		<script> alert("<%=errorMsg%>"); </script>
		
		<script>
     document.getElementById("name").value = "<%= user != null ? user.getName() : "" %>";
     document.getElementById("email").value = "<%= user != null ? user.getEmail() : "" %>";
     document.getElementById("phoneNumber").value = "<%= user != null ? user.getPhoneNumber() : "" %>";
     document.getElementById("password").value = "<%= user != null ? user.getPassword() : "" %>";
      document.getElementById("address").value = "<%= user != null ? user.getAddress() : "" %>";	
   </script>

			<% } %>
    <form action="update" method="post">
    
    <input type="hidden" name="id" value="<%=user.getId() %>">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required value="<%= user.getName() %>">
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" disabled value="<%= user.getEmail() %>">
    <label for="phoneNumber">Phone number:</label>
    <input type="number" id="phoneNumber" name="phoneNumber" disabled value="<%= user.getPhoneNumber() %>">
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required value="<%= user.getPassword() %>">
    <label for="address">Address:</label>
    <textarea id="address" name="Address" required><%= user != null ? user.getAddress() : "" %></textarea>
     <button type="submit">Submit</button>
    
    
</form>


</body>
</html>