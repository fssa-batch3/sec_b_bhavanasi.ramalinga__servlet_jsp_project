<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Apply basic styling to the form container */
.register {
    max-width: 400px;
    margin: 0 auto;
    margin-top:40px;
    padding: 20px;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

/* Style the form headings */
h2 {
    font-size: 24px;
    margin-bottom: 20px;
    text-align: center;
}

/* Style form labels and input fields */
label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="text"],
input[type="password"],
input[type="tel"] {
    width: 90%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
}
 .container{
            max-width: 1200px;
            margin: 20px auto;
            padding: 0 20px;
            margin-left:1000px;
            display:flex;
            justify-content:space-evenly;
        }

/* Style the password pattern message */
p {
    font-size: 14px;
    color: #555;
}

/* Style the "Already have an account?" message and "LOG IN" link */
p a {
    text-decoration: none;
    color: #007bff;
}

/* Style the "SUBMIT" button */
.submit {
    background-color: #002266;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

.submit:hover {
    background-color: #0056b3;
}



 header {
            background-color:#002266;
            color: #fff;
            padding: 10px 0;
            text-align: right;
        }

        header a {
            text-decoration: none;
            color: #fff;
         
           
        }


.submit:hover {
    background-color: #0056b3;
}

</style>
</head>
<body>

				
		<% String errorMsg = (String) request.getAttribute("errorMessage"); %>
		<% if(errorMsg != null) { %>
		
		<script> alert("<%=errorMsg%>"); </script>
		<% } %>

 <header>
        <div class="container">
           <a href="/login">Login</a>
            <a href="#">Register</a>
        </div>
    </header>		

<section>
    <form role="form" action="create" method="POST" >
    
   
		
        <div class="register">
            <h2> SIGN UP : </h2>
            <div>
                <label> Name: </label>
                <input type="text" id="uname" name="name" required="true">
            </div>
            
            <div>
                <label> Email: </label>
                <input type="text" id="email" name="email" required="true">
            </div>

            <div>
                <label> Phone number: </label>
                <input type="tel" id="phonenumber" name="phoneNumber" placeholder="+91" required="true">
            </div>

            <div>
                <label> Create Password: </label>
                <input type="password" id="password" name="password" required="true" >
                <p> (Pattern: At least 8 characters including uppercase, lowercase, number, and special characters) </p>
            </div>
             <div>
                <label> Address: </label>
                <input type="text" id="Address" name="Address"  required="true">
            </div>
             <div>
                <label> Select Role: </label>
                <select id="role" name="role" required="true">
                    <option value="user">User</option>
                    <option value="seller">Seller</option>
                </select>
            </div>

            <p>
              Already have an account? <a href="user/login"> LOG IN </a> 
            </p>

            <button type="submit" class="submit"> SUBMIT </button>
        </div>
    </form>
</section>




</body>
</html>