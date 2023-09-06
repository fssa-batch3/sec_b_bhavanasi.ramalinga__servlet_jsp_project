<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
    <style>
        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Container for form */
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin-top:40px;
        }

        /* Form styles */
        h2 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="number"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        p {
            font-size: 14px;
            color: #555;
            text-align: center;
        }

        p a {
            text-decoration: none;
            color: #007bff;
        }

        /* Submit button */
        .btn {
            background-color: #002266;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
            display: block;
            margin: 0 auto;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        /* Header styles */
        header {
            background-color: #002266;
            color: #fff;
            padding: 10px 0;
            text-align: right;
        }

        header a {
            text-decoration: none;
            color: #fff;
        }
        
       
        /* CSS for the body */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .containers {
            max-width: 1200px;
            margin: 20px auto;
            padding: 0 20px;
            margin-left:1000px;
            display:flex;
            justify-content:space-evenly;
        }
    </style>
</head>
<body>
 <header>
        <div class="containers">
            <a href="User/Login">Sign In</a>
            <a href="User/New">Register</a>
        </div>
    </header>
    <section class="container">
        <form role="form" action="login" method="POST" >
            <h2>Login</h2>

            <div class="no">
                <label>Contact number:</label>
                <input type="number" required="true" placeholder="+91" id="phonenumber" name="phoneNumber">
            </div>

            <div class="password">
                <label>Password:</label>
                <input type="password" placeholder="*******" id="password" name="password" required="true">
            </div>

            <p>Create a new account <a href="user/new">Sign up</a></p>

            <div>
                <a href="List/Category"><button class="btn" type="submit">Submit</button></a>
            </div>
        </form>
    </section>
</body>
</html>
