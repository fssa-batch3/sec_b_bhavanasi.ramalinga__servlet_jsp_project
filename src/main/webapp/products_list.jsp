<%@page import="java.awt.Button"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.productprice.service.ProductService"%>
<%@page import="in.fssa.productprice.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<style>
.header{
display:flex;
margin-left:900px;
margin-right:20px;

}
h2{
margin:10px;
}
table {
  border-collapse: collapse;
  width: 100%;
  margin-bottom: 20px;
 
  margin-top:130px;
}

th, td {
  border: 1px solid #ddd;
  padding: 8px;
 
}

th {
  background-color: #f2f2f2;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
  
}
td {
  text-align: center; 
}
tr:hover {
  background-color: #ddd;
}

h2 {
  margin: 0;
}

button {
  padding: 5px 10px;
  background-color: #007BFF;
  border: none;
  color: white;
  cursor: pointer;
}

button:hover {
  background-color: #0056b3;
}

a {
  text-decoration: none;
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

<% ProductService sr = new ProductService();%>
<% Set<Product> products= sr.listAllProduct();%>
 <table>
   <tr>
	   <th><h2>Id</h2></th>
	  <th><h2>Name</h2></th>
	  <th><h2>Price</h2></th>
	  <th><h2>Image</h2></th>
	  <th><h2>Description</h2></th>
	 
	  <th colspan="4"><h2>Action</h2></th>
	  
 </tr>
 <% for(Product product : products) { %>
<tr>
<td><%= product.getId()%></td>
<td><%= product.getName()%></td>
<td><%= product.getPrice() %></td>
<td><%=product.getImage_url() %></td>
<td><%=product.getDetails() %></td>
<td><a href="product/view?id=<%=product.getId() %>"><button  type="submit">View</button></a></td>	
<td><a href="product/edit?id=<%=product.getId() %>"><button type="submit">Edit</button></a></td>
<td><a href="product/delete?id=<%=product.getId() %>"><button type="submit">Delete</button></a></td>
</tr>
 <% } %>
 
</table>


</body>
</html>