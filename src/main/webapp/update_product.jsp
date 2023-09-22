<%@page import="in.fssa.productprice.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Product Detail</title>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
  margin: 0;
  padding: 20px;
}

h1 {
  text-align: center;
 
  color: #002266;
  padding: 10px;
  margin-bottom: 20px;
}

form {
  max-width: 400px;
  margin: 0 auto;
  background-color: #ffffff;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 5px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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
}

button[type="submit"]:hover {
  background-color: #0056b3;
}
</style>
</head>
<body>

<jsp:include page="seller_header.jsp" />


 <h1>Product Details</h1>
<% Product product = (Product) request.getAttribute("product"); %>

 <form action="update" method="post">

   <input type="hidden" name="id" value="<%=product.getId() %>">

 <label for="productName">Product Name</label>
    <input type="text" id="productName" name="name" value="<%=product.getName() %>" required><br><br>

    <label for="productPrice">Product Price</label>
    <input type="text" id="productPrice" name="price" value="<%=product.getPrice() %>" required><br><br>
    
     <label for="image_url">Image url</label>
    <input type="text" id="image_url" name="image_url" value="<%=product.getImageurl() %>" required><br><br>

    <label for="Details">Description</label>
    <textarea id="Details" name="Details" required><%=product.getDetails()%></textarea><br><br>


<button type="submit">Submit</button>

    
   </form> 

  
</body>
</html>