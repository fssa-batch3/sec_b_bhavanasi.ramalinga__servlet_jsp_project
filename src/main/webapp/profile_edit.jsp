<%@page import="in.fssa.productprice.model.UserEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<script
	src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js"> </script>
	
    <style>
    
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
h1{
display: flex;
justify-content: center;
margin-top:100px;
}

</style>
</head>
<body>
  <jsp:include page="seller_header.jsp" />
   <h1> Update user </h1>
    
   
        <%
		UserEntity user = (UserEntity) request.getAttribute("editUser");

		
		%>
		
				
			<%
       String error = (String) request.getAttribute("errorMessage");
    if (error != null && !("".equals(error))) {
      %>
        <script>
        Notify.error(
        `<%=error%>`
        );
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
    <label for="address">Role:</label>
     <input type="role" id="role" name="role" required disabled  value="<%= user.getRole() %>">
    <label for="address">Address:</label>
    <textarea id="address" name="Address" required><%= user != null ? user.getAddress() : "" %></textarea>
     <button type="submit">Submit</button>
    
    
</form>


</body>
</html>