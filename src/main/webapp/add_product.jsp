<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
  margin: 0;
  padding: 20px;
}

form {
  max-width: 400px;
  margin: 0 auto;
  background-color: #ffffff;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 5px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  margin-top:100px;
}

label {
  display: block;
  margin-bottom: 10px;
  font-weight: bold;
}

input[type="text"] {
  width: 90%;
  padding: 10px;
  margin-bottom: 20px;
  border: 1px solid #ddd;
  border-radius: 5px;
}

button[type="submit"] {
  background-color: #007BFF;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  text-decoration: none;
}

button[type="submit"]:hover {
  background-color: #0056b3;
  text-decoration: none;
}

/* Remove default link underline */
a {
  text-decoration: none;
  color: inherit;
}

nav ul {
  list-style: none;
  padding: 0;
  text-align: right;
}

nav li , h2{
  display: inline;
  margin-right: 40px;
  
}

nav a , h2{
  text-decoration: none;
  color: black;
  font-weight: bold;
  margin-left:20px;
}
h2{

}

nav a:hover {
  text-decoration: underline;
}

        /* CSS for the body */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
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

<jsp:include page="seller_header.jsp" />

 <form action="products/create" method="POST">
 <label for="name">productName</label>
        <input type="text"  name="name" required><br><br>
        
        <label for="price">productPrice</label>
        <input type="text"  name="price" required><br><br>
        <label for="id">Image</label>
        <input type="text" name="image_url" required><br><br>
        
        <label for="Details">Details</label>
      <textarea name="Details" required></textarea><br><br>

      <label for="category">Category:</label>
      <select id="category" name="category" required>
      
      <option value="9">Computer parts</option>
      <option value="11">Fridge</option>
      <option value="2">Mobiles,chargers and Covers</option>
      <option value="1">Laptops & chargers</option>
      <option value="3">Electric Wires</option>
      <option value="4">Camera</option>
      <option value="5">TV</option> 	
      <option value="7">Washing Machine</option>
      <option value="6">Speakers</option> 		
      <option value="8">Tube Lights and Bulbs</option> 
      <option value="10">Earphones</option> 
      <option value="12">Iron boxes </option>
         
    
</select><br><br>

        
       <button type="submit">Submit</button>
  </form>
  
</body>
</html>